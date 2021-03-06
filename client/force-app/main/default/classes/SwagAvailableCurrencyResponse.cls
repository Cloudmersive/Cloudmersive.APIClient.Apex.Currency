/*
 * currencyapi
 * The currency APIs help you retrieve exchange rates and convert prices between currencies easily.
 *
 * OpenAPI spec version: v1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/**
 * Result of performing an enumerate currencies operation
 */
public class SwagAvailableCurrencyResponse implements Swagger.MappedProperties {
    /**
     * List of available currencies from the API
     * @return currencies
     */
    public List<SwagAvailableCurrency> currencies { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'Currencies' => 'currencies'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public SwagAvailableCurrencyResponse() {
        currencies = new List<SwagAvailableCurrency>();
    }

    public static SwagAvailableCurrencyResponse getExample() {
        SwagAvailableCurrencyResponse availableCurrencyResponse = new SwagAvailableCurrencyResponse();
        availableCurrencyResponse.currencies = new List<SwagAvailableCurrency>{SwagAvailableCurrency.getExample()};
        return availableCurrencyResponse;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagAvailableCurrencyResponse) {
            SwagAvailableCurrencyResponse availableCurrencyResponse = (SwagAvailableCurrencyResponse) obj;
            return this.currencies == availableCurrencyResponse.currencies;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (currencies == null ? 0 : System.hashCode(currencies));
        return hashCode;
    }
}

