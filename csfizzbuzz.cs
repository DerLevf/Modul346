using System.IO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

public static class Cfizzbuzz
{
    [FunctionName("cfizzbuzz")]
    public static IActionResult Run(
        [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = "fizzbuzz")] HttpRequest req,
        ILogger log)
    {
        log.LogInformation("Processing FizzBuzz function in C#.");

        string numberQuery = req.Query["number"];
        int number;

        if (string.IsNullOrEmpty(numberQuery))
        {
            // Try to read the number from the request body if it's not in the query parameters
            string requestBody = new StreamReader(req.Body).ReadToEnd();
            dynamic data = JsonConvert.DeserializeObject(requestBody);
            numberQuery = data?.number;
        }

        if (!string.IsNullOrEmpty(numberQuery) && int.TryParse(numberQuery, out number))
        {
            // Implement the FizzBuzz logic
            if (number % 3 == 0 && number % 5 == 0)
            {
                return new OkObjectResult("FizzBuzz");
            }
            else if (number % 3 == 0)
            {
                return new OkObjectResult("Fizz");
            }
            else if (number % 5 == 0)
            {
                return new OkObjectResult("Buzz");
            }
            else
            {
                return new OkObjectResult(number.ToString());
            }
        }
        else
        {
            return new BadRequestObjectResult("Invalid input. Please provide a valid integer as a query parameter or in the request body.");
        }
    }
}
