    package com.example;

    import com.microsoft.azure.functions.annotation.*;
    import com.microsoft.azure.functions.*;

    import java.util.Optional;

    public class javafizzbuzz {

        @FunctionName("javafizzbuzz")
        public HttpResponseMessage run(
            @HttpTrigger(name = "req", 
                         methods = {HttpMethod.GET, HttpMethod.POST}, 
                         authLevel = AuthorizationLevel.ANONYMOUS, 
                         route = "fizzbuzz") HttpRequestMessage<Optional<String>> request,
            final ExecutionContext context) {

            context.getLogger().info("Processing FizzBuzz function in Java.");

            // Get the 'number' query parameter
            String query = request.getQueryParameters().get("number");
            String body = request.getBody().orElse(null);

            String numberStr = query != null ? query : body;
            if (numberStr == null) {
                return request.createResponseBuilder(HttpStatus.BAD_REQUEST)
                    .body("Please provide a number as a query parameter or in the request body.")
                    .build();
            }

            try {
                int number = Integer.parseInt(numberStr);

                // FizzBuzz logic
                if (number % 3 == 0 && number % 5 == 0) {
                    return request.createResponseBuilder(HttpStatus.OK).body("FizzBuzz").build();
                } else if (number % 3 == 0) {
                    return request.createResponseBuilder(HttpStatus.OK).body("Fizz").build();
                } else if (number % 5 == 0) {
                    return request.createResponseBuilder(HttpStatus.OK).body("Buzz").build();
                } else {
                    return request.createResponseBuilder(HttpStatus.OK).body(String.valueOf(number)).build();
                }
            } catch (NumberFormatException e) {
                return request.createResponseBuilder(HttpStatus.BAD_REQUEST)
                    .body("Invalid input. Please provide a valid integer.")
                    .build();
            }
        }
    }
