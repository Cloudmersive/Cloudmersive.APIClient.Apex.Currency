@isTest
private class SwagExchangeRateResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagExchangeRateResult exchangeRateResult1 = SwagExchangeRateResult.getExample();
        SwagExchangeRateResult exchangeRateResult2 = exchangeRateResult1;
        SwagExchangeRateResult exchangeRateResult3 = new SwagExchangeRateResult();
        SwagExchangeRateResult exchangeRateResult4 = exchangeRateResult3;

        System.assert(exchangeRateResult1.equals(exchangeRateResult2));
        System.assert(exchangeRateResult2.equals(exchangeRateResult1));
        System.assert(exchangeRateResult1.equals(exchangeRateResult1));
        System.assert(exchangeRateResult3.equals(exchangeRateResult4));
        System.assert(exchangeRateResult4.equals(exchangeRateResult3));
        System.assert(exchangeRateResult3.equals(exchangeRateResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagExchangeRateResult exchangeRateResult1 = SwagExchangeRateResult.getExample();
        SwagExchangeRateResult exchangeRateResult2 = SwagExchangeRateResult.getExample();
        SwagExchangeRateResult exchangeRateResult3 = new SwagExchangeRateResult();
        SwagExchangeRateResult exchangeRateResult4 = new SwagExchangeRateResult();

        System.assert(exchangeRateResult1.equals(exchangeRateResult2));
        System.assert(exchangeRateResult2.equals(exchangeRateResult1));
        System.assert(exchangeRateResult3.equals(exchangeRateResult4));
        System.assert(exchangeRateResult4.equals(exchangeRateResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagExchangeRateResult exchangeRateResult1 = SwagExchangeRateResult.getExample();
        SwagExchangeRateResult exchangeRateResult2 = new SwagExchangeRateResult();

        System.assertEquals(false, exchangeRateResult1.equals(exchangeRateResult2));
        System.assertEquals(false, exchangeRateResult2.equals(exchangeRateResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagExchangeRateResult exchangeRateResult1 = SwagExchangeRateResult.getExample();
        SwagExchangeRateResult exchangeRateResult2 = new SwagExchangeRateResult();

        System.assertEquals(false, exchangeRateResult1.equals('foo'));
        System.assertEquals(false, exchangeRateResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagExchangeRateResult exchangeRateResult1 = SwagExchangeRateResult.getExample();
        SwagExchangeRateResult exchangeRateResult2 = new SwagExchangeRateResult();
        SwagExchangeRateResult exchangeRateResult3;

        System.assertEquals(false, exchangeRateResult1.equals(exchangeRateResult3));
        System.assertEquals(false, exchangeRateResult2.equals(exchangeRateResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagExchangeRateResult exchangeRateResult1 = SwagExchangeRateResult.getExample();
        SwagExchangeRateResult exchangeRateResult2 = new SwagExchangeRateResult();

        System.assertEquals(exchangeRateResult1.hashCode(), exchangeRateResult1.hashCode());
        System.assertEquals(exchangeRateResult2.hashCode(), exchangeRateResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagExchangeRateResult exchangeRateResult1 = SwagExchangeRateResult.getExample();
        SwagExchangeRateResult exchangeRateResult2 = SwagExchangeRateResult.getExample();
        SwagExchangeRateResult exchangeRateResult3 = new SwagExchangeRateResult();
        SwagExchangeRateResult exchangeRateResult4 = new SwagExchangeRateResult();

        System.assert(exchangeRateResult1.equals(exchangeRateResult2));
        System.assert(exchangeRateResult3.equals(exchangeRateResult4));
        System.assertEquals(exchangeRateResult1.hashCode(), exchangeRateResult2.hashCode());
        System.assertEquals(exchangeRateResult3.hashCode(), exchangeRateResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagExchangeRateResult exchangeRateResult = new SwagExchangeRateResult();
        Map<String, String> propertyMappings = exchangeRateResult.getPropertyMappings();
        System.assertEquals('exchangeRate', propertyMappings.get('ExchangeRate'));
    }
}
