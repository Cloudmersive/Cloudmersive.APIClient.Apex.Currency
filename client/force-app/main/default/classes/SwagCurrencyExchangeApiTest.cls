@isTest
private class SwagCurrencyExchangeApiTest {
    /**
     * Converts a price from the source currency into the destination currency
     *
     * Automatically converts the price in the source currency into the destination currency using the latest available currency exchange rate data.
     */
    @isTest
    private static void currencyExchangeConvertCurrencyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'source' => 'source_example',
            'destination' => 'destination_example',
            'sourcePrice' => 1.2
        };

        SwagClient client;
        SwagCurrencyExchangeApi api;
        SwagConvertedCurrencyResult response;
        SwagConvertedCurrencyResult expectedResponse;

        client = new SwagClient();
        api = new SwagCurrencyExchangeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "FormattedPriceAsString" : "FormattedPriceAsString",\r\n  "ISOCurrencyCode" : "ISOCurrencyCode",\r\n  "ConvertedPrice" : 0.8008281904610115,\r\n  "CurrencySymbol" : "CurrencySymbol"\r\n}');
        expectedResponse = SwagConvertedCurrencyResult.getExample();
        response = (SwagConvertedCurrencyResult) api.currencyExchangeConvertCurrency(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get a list of available currencies and corresponding countries
     *
     * Enumerates available currencies and the countries that correspond to these currencies.
     */
    @isTest
    private static void currencyExchangeGetAvailableCurrenciesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        SwagClient client;
        SwagCurrencyExchangeApi api;
        SwagAvailableCurrencyResponse response;
        SwagAvailableCurrencyResponse expectedResponse;

        client = new SwagClient();
        api = new SwagCurrencyExchangeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "Currencies" : [ {\r\n    "CountryThreeLetterCode" : "CountryThreeLetterCode",\r\n    "ISOCurrencyCode" : "ISOCurrencyCode",\r\n    "CountryName" : "CountryName",\r\n    "CurrencyEnglishName" : "CurrencyEnglishName",\r\n    "CurrencySymbol" : "CurrencySymbol",\r\n    "IsEuropeanUnionMember" : true,\r\n    "CountryISOTwoLetterCode" : "CountryISOTwoLetterCode"\r\n  }, {\r\n    "CountryThreeLetterCode" : "CountryThreeLetterCode",\r\n    "ISOCurrencyCode" : "ISOCurrencyCode",\r\n    "CountryName" : "CountryName",\r\n    "CurrencyEnglishName" : "CurrencyEnglishName",\r\n    "CurrencySymbol" : "CurrencySymbol",\r\n    "IsEuropeanUnionMember" : true,\r\n    "CountryISOTwoLetterCode" : "CountryISOTwoLetterCode"\r\n  } ]\r\n}');
        expectedResponse = SwagAvailableCurrencyResponse.getExample();
        response = (SwagAvailableCurrencyResponse) api.currencyExchangeGetAvailableCurrencies();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Gets the exchange rate from the source currency into the destination currency
     *
     * Automatically gets the exchange rate from the source currency into the destination currency using the latest available currency exchange rate data.
     */
    @isTest
    private static void currencyExchangeGetExchangeRateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'source' => 'source_example',
            'destination' => 'destination_example'
        };

        SwagClient client;
        SwagCurrencyExchangeApi api;
        SwagExchangeRateResult response;
        SwagExchangeRateResult expectedResponse;

        client = new SwagClient();
        api = new SwagCurrencyExchangeApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ExchangeRate" : 0.8008281904610115\r\n}');
        expectedResponse = SwagExchangeRateResult.getExample();
        response = (SwagExchangeRateResult) api.currencyExchangeGetExchangeRate(params);
        System.assertEquals(expectedResponse, response);
    }
}