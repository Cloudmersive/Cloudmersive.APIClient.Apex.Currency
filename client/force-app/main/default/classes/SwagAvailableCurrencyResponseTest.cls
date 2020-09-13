@isTest
private class SwagAvailableCurrencyResponseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagAvailableCurrencyResponse availableCurrencyResponse1 = SwagAvailableCurrencyResponse.getExample();
        SwagAvailableCurrencyResponse availableCurrencyResponse2 = availableCurrencyResponse1;
        SwagAvailableCurrencyResponse availableCurrencyResponse3 = new SwagAvailableCurrencyResponse();
        SwagAvailableCurrencyResponse availableCurrencyResponse4 = availableCurrencyResponse3;

        System.assert(availableCurrencyResponse1.equals(availableCurrencyResponse2));
        System.assert(availableCurrencyResponse2.equals(availableCurrencyResponse1));
        System.assert(availableCurrencyResponse1.equals(availableCurrencyResponse1));
        System.assert(availableCurrencyResponse3.equals(availableCurrencyResponse4));
        System.assert(availableCurrencyResponse4.equals(availableCurrencyResponse3));
        System.assert(availableCurrencyResponse3.equals(availableCurrencyResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagAvailableCurrencyResponse availableCurrencyResponse1 = SwagAvailableCurrencyResponse.getExample();
        SwagAvailableCurrencyResponse availableCurrencyResponse2 = SwagAvailableCurrencyResponse.getExample();
        SwagAvailableCurrencyResponse availableCurrencyResponse3 = new SwagAvailableCurrencyResponse();
        SwagAvailableCurrencyResponse availableCurrencyResponse4 = new SwagAvailableCurrencyResponse();

        System.assert(availableCurrencyResponse1.equals(availableCurrencyResponse2));
        System.assert(availableCurrencyResponse2.equals(availableCurrencyResponse1));
        System.assert(availableCurrencyResponse3.equals(availableCurrencyResponse4));
        System.assert(availableCurrencyResponse4.equals(availableCurrencyResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagAvailableCurrencyResponse availableCurrencyResponse1 = SwagAvailableCurrencyResponse.getExample();
        SwagAvailableCurrencyResponse availableCurrencyResponse2 = new SwagAvailableCurrencyResponse();

        System.assertEquals(false, availableCurrencyResponse1.equals(availableCurrencyResponse2));
        System.assertEquals(false, availableCurrencyResponse2.equals(availableCurrencyResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagAvailableCurrencyResponse availableCurrencyResponse1 = SwagAvailableCurrencyResponse.getExample();
        SwagAvailableCurrencyResponse availableCurrencyResponse2 = new SwagAvailableCurrencyResponse();

        System.assertEquals(false, availableCurrencyResponse1.equals('foo'));
        System.assertEquals(false, availableCurrencyResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagAvailableCurrencyResponse availableCurrencyResponse1 = SwagAvailableCurrencyResponse.getExample();
        SwagAvailableCurrencyResponse availableCurrencyResponse2 = new SwagAvailableCurrencyResponse();
        SwagAvailableCurrencyResponse availableCurrencyResponse3;

        System.assertEquals(false, availableCurrencyResponse1.equals(availableCurrencyResponse3));
        System.assertEquals(false, availableCurrencyResponse2.equals(availableCurrencyResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagAvailableCurrencyResponse availableCurrencyResponse1 = SwagAvailableCurrencyResponse.getExample();
        SwagAvailableCurrencyResponse availableCurrencyResponse2 = new SwagAvailableCurrencyResponse();

        System.assertEquals(availableCurrencyResponse1.hashCode(), availableCurrencyResponse1.hashCode());
        System.assertEquals(availableCurrencyResponse2.hashCode(), availableCurrencyResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagAvailableCurrencyResponse availableCurrencyResponse1 = SwagAvailableCurrencyResponse.getExample();
        SwagAvailableCurrencyResponse availableCurrencyResponse2 = SwagAvailableCurrencyResponse.getExample();
        SwagAvailableCurrencyResponse availableCurrencyResponse3 = new SwagAvailableCurrencyResponse();
        SwagAvailableCurrencyResponse availableCurrencyResponse4 = new SwagAvailableCurrencyResponse();

        System.assert(availableCurrencyResponse1.equals(availableCurrencyResponse2));
        System.assert(availableCurrencyResponse3.equals(availableCurrencyResponse4));
        System.assertEquals(availableCurrencyResponse1.hashCode(), availableCurrencyResponse2.hashCode());
        System.assertEquals(availableCurrencyResponse3.hashCode(), availableCurrencyResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagAvailableCurrencyResponse availableCurrencyResponse = new SwagAvailableCurrencyResponse();
        Map<String, String> propertyMappings = availableCurrencyResponse.getPropertyMappings();
        System.assertEquals('currencies', propertyMappings.get('Currencies'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagAvailableCurrencyResponse availableCurrencyResponse = new SwagAvailableCurrencyResponse();
        System.assertEquals(new List<SwagAvailableCurrency>(), availableCurrencyResponse.currencies);
    }
}
