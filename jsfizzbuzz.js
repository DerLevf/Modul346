module.exports = async function (context, req) {
    context.log('Processing FizzBuzz function in JavaScript.');

    let number = req.query.number || (req.body && req.body.number);

    if (!number) {
        context.res = {
            status: 400,
            body: "Please provide a number as a query parameter or in the request body."
        };
        return;
    }

    try {
        number = parseInt(number);
        if (isNaN(number)) throw new Error();

        if (number % 3 === 0 && number % 5 === 0) {
            context.res = { status: 200, body: "FizzBuzz" };
        } else if (number % 3 === 0) {
            context.res = { status: 200, body: "Fizz" };
        } else if (number % 5 === 0) {
            context.res = { status: 200, body: "Buzz" };
        } else {
            context.res = { status: 200, body: number.toString() };
        }
    } catch (error) {
        context.res = {
            status: 400,
            body: "Invalid input. Please provide a valid integer."
        };
    }
};
