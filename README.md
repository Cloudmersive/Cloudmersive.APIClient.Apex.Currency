# currencyapi API Client

The currency APIs help you retrieve exchange rates and convert prices between currencies easily.

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)


If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```


## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
   $ sfdx force:source:push
   ```
3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

    ```bash
    $ sfdx sfdx force:apex:test:run
    ```
5. Retrieve the job id from the console and check the test results.

  ```bash
  $ sfdx force:apex:test:report -i theJobId
  ```


## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
SwagCurrencyExchangeApi api = new SwagCurrencyExchangeApi();
SwagClient client = api.getClient();


Map<String, Object> params = new Map<String, Object>{
    'source' => 'source_example',
    'destination' => 'destination_example',
    'sourcePrice' => 1.2
};

try {
    // cross your fingers
    SwagConvertedCurrencyResult result = api.currencyExchangeConvertCurrency(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwagCurrencyExchangeApi* | [**currencyExchangeConvertCurrency**](docs/SwagCurrencyExchangeApi.md#currencyExchangeConvertCurrency) | **POST** /currency/exchange-rates/convert/{source}/to/{destination} | Converts a price from the source currency into the destination currency
*SwagCurrencyExchangeApi* | [**currencyExchangeGetAvailableCurrencies**](docs/SwagCurrencyExchangeApi.md#currencyExchangeGetAvailableCurrencies) | **POST** /currency/exchange-rates/list-available | Get a list of available currencies and corresponding countries
*SwagCurrencyExchangeApi* | [**currencyExchangeGetExchangeRate**](docs/SwagCurrencyExchangeApi.md#currencyExchangeGetExchangeRate) | **POST** /currency/exchange-rates/get/{source}/to/{destination} | Gets the exchange rate from the source currency into the destination currency


## Documentation for Models

 - [SwagAvailableCurrency](docs/SwagAvailableCurrency.md)
 - [SwagAvailableCurrencyResponse](docs/SwagAvailableCurrencyResponse.md)
 - [SwagConvertedCurrencyResult](docs/SwagConvertedCurrencyResult.md)
 - [SwagExchangeRateResult](docs/SwagExchangeRateResult.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author



