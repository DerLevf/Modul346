import azure.functions as func
import logging

app = func.FunctionApp(http_auth_level=func.AuthLevel.ANONYMOUS)

@app.route(route="pyfizzbuzz")
def pyfizzbuzz(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Processing FizzBuzz function.')

    number = req.params.get('number')
    if not number:
        try:
            req_body = req.get_json()
        except ValueError:
            pass
        else:
            number = req_body.get('number')

    if number:
        try:
            number = int(number)  # Convert to integer
            if number % 3 == 0 and number % 5 == 0:
                return func.HttpResponse("FizzBuzz")
            elif number % 3 == 0:
                return func.HttpResponse("Fizz")
            elif number % 5 == 0:
                return func.HttpResponse("Buzz")
            else:
                return func.HttpResponse(str(number))
        except ValueError:
            return func.HttpResponse(
                "Invalid input. Please provide a valid integer.",
                status_code=400
            )
    else:
        return func.HttpResponse(
            "Please provide a number as a query parameter or in the request body.",
            status_code=400
        )