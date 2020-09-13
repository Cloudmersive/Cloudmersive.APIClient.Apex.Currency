# SwagCurrencyExchangeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currencyExchangeConvertCurrency**](SwagCurrencyExchangeApi.md#currencyExchangeConvertCurrency) | **POST** /currency/exchange-rates/convert/{source}/to/{destination} | Converts a price from the source currency into the destination currency
[**currencyExchangeGetAvailableCurrencies**](SwagCurrencyExchangeApi.md#currencyExchangeGetAvailableCurrencies) | **POST** /currency/exchange-rates/list-available | Get a list of available currencies and corresponding countries
[**currencyExchangeGetExchangeRate**](SwagCurrencyExchangeApi.md#currencyExchangeGetExchangeRate) | **POST** /currency/exchange-rates/get/{source}/to/{destination} | Gets the exchange rate from the source currency into the destination currency


<a name="currencyExchangeConvertCurrency"></a>
# **currencyExchangeConvertCurrency**
> SwagConvertedCurrencyResult currencyExchangeConvertCurrency(source, destination, sourcePrice)

Converts a price from the source currency into the destination currency

Automatically converts the price in the source currency into the destination currency using the latest available currency exchange rate data.

### Example
```java
SwagCurrencyExchangeApi api = new SwagCurrencyExchangeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **String**| Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc. |
 **destination** | **String**| Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc. |
 **sourcePrice** | **Double**| Input price, such as 19.99 in source currency |

### Return type

[**SwagConvertedCurrencyResult**](SwagConvertedCurrencyResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="currencyExchangeGetAvailableCurrencies"></a>
# **currencyExchangeGetAvailableCurrencies**
> SwagAvailableCurrencyResponse currencyExchangeGetAvailableCurrencies()

Get a list of available currencies and corresponding countries

Enumerates available currencies and the countries that correspond to these currencies.

### Example
```java
SwagCurrencyExchangeApi api = new SwagCurrencyExchangeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

try {
    // cross your fingers
    SwagAvailableCurrencyResponse result = api.currencyExchangeGetAvailableCurrencies();
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SwagAvailableCurrencyResponse**](SwagAvailableCurrencyResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="currencyExchangeGetExchangeRate"></a>
# **currencyExchangeGetExchangeRate**
> SwagExchangeRateResult currencyExchangeGetExchangeRate(source, destination)

Gets the exchange rate from the source currency into the destination currency

Automatically gets the exchange rate from the source currency into the destination currency using the latest available currency exchange rate data.

### Example
```java
SwagCurrencyExchangeApi api = new SwagCurrencyExchangeApi();
SwagClient client = api.getClient();

// Configure API key authorization: Apikey
ApiKeyAuth Apikey = (ApiKeyAuth) client.getAuthentication('Apikey');
Apikey.setApiKey('YOUR API KEY');

Map<String, Object> params = new Map<String, Object>{
    'source' => 'source_example',
    'destination' => 'destination_example'
};

try {
    // cross your fingers
    SwagExchangeRateResult result = api.currencyExchangeGetExchangeRate(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **String**| Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc. |
 **destination** | **String**| Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc. |

### Return type

[**SwagExchangeRateResult**](SwagExchangeRateResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

