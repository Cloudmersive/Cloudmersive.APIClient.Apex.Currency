@isTest
private class SwagConvertedCurrencyResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagConvertedCurrencyResult convertedCurrencyResult1 = SwagConvertedCurrencyResult.getExample();
        SwagConvertedCurrencyResult convertedCurrencyResult2 = convertedCurrencyResult1;
        SwagConvertedCurrencyResult convertedCurrencyResult3 = new SwagConvertedCurrencyResult();
        SwagConvertedCurrencyResult convertedCurrencyResult4 = convertedCurrencyResult3;

        System.assert(convertedCurrencyResult1.equals(convertedCurrencyResult2));
        System.assert(convertedCurrencyResult2.equals(convertedCurrencyResult1));
        System.assert(convertedCurrencyResult1.equals(convertedCurrencyResult1));
        System.assert(convertedCurrencyResult3.equals(convertedCurrencyResult4));
        System.assert(convertedCurrencyResult4.equals(convertedCurrencyResult3));
        System.assert(convertedCurrencyResult3.equals(convertedCurrencyResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagConvertedCurrencyResult convertedCurrencyResult1 = SwagConvertedCurrencyResult.getExample();
        SwagConvertedCurrencyResult convertedCurrencyResult2 = SwagConvertedCurrencyResult.getExample();
        SwagConvertedCurrencyResult convertedCurrencyResult3 = new SwagConvertedCurrencyResult();
        SwagConvertedCurrencyResult convertedCurrencyResult4 = new SwagConvertedCurrencyResult();

        System.assert(convertedCurrencyResult1.equals(convertedCurrencyResult2));
        System.assert(convertedCurrencyResult2.equals(convertedCurrencyResult1));
        System.assert(convertedCurrencyResult3.equals(convertedCurrencyResult4));
        System.assert(convertedCurrencyResult4.equals(convertedCurrencyResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagConvertedCurrencyResult convertedCurrencyResult1 = SwagConvertedCurrencyResult.getExample();
        SwagConvertedCurrencyResult convertedCurrencyResult2 = new SwagConvertedCurrencyResult();

        System.assertEquals(false, convertedCurrencyResult1.equals(convertedCurrencyResult2));
        System.assertEquals(false, convertedCurrencyResult2.equals(convertedCurrencyResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagConvertedCurrencyResult convertedCurrencyResult1 = SwagConvertedCurrencyResult.getExample();
        SwagConvertedCurrencyResult convertedCurrencyResult2 = new SwagConvertedCurrencyResult();

        System.assertEquals(false, convertedCurrencyResult1.equals('foo'));
        System.assertEquals(false, convertedCurrencyResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagConvertedCurrencyResult convertedCurrencyResult1 = SwagConvertedCurrencyResult.getExample();
        SwagConvertedCurrencyResult convertedCurrencyResult2 = new SwagConvertedCurrencyResult();
        SwagConvertedCurrencyResult convertedCurrencyResult3;

        System.assertEquals(false, convertedCurrencyResult1.equals(convertedCurrencyResult3));
        System.assertEquals(false, convertedCurrencyResult2.equals(convertedCurrencyResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagConvertedCurrencyResult convertedCurrencyResult1 = SwagConvertedCurrencyResult.getExample();
        SwagConvertedCurrencyResult convertedCurrencyResult2 = new SwagConvertedCurrencyResult();

        System.assertEquals(convertedCurrencyResult1.hashCode(), convertedCurrencyResult1.hashCode());
        System.assertEquals(convertedCurrencyResult2.hashCode(), convertedCurrencyResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagConvertedCurrencyResult convertedCurrencyResult1 = SwagConvertedCurrencyResult.getExample();
        SwagConvertedCurrencyResult convertedCurrencyResult2 = SwagConvertedCurrencyResult.getExample();
        SwagConvertedCurrencyResult convertedCurrencyResult3 = new SwagConvertedCurrencyResult();
        SwagConvertedCurrencyResult convertedCurrencyResult4 = new SwagConvertedCurrencyResult();

        System.assert(convertedCurrencyResult1.equals(convertedCurrencyResult2));
        System.assert(convertedCurrencyResult3.equals(convertedCurrencyResult4));
        System.assertEquals(convertedCurrencyResult1.hashCode(), convertedCurrencyResult2.hashCode());
        System.assertEquals(convertedCurrencyResult3.hashCode(), convertedCurrencyResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagConvertedCurrencyResult convertedCurrencyResult = new SwagConvertedCurrencyResult();
        Map<String, String> propertyMappings = convertedCurrencyResult.getPropertyMappings();
        System.assertEquals('convertedPrice', propertyMappings.get('ConvertedPrice'));
        System.assertEquals('isOCurrencyCode', propertyMappings.get('ISOCurrencyCode'));
        System.assertEquals('currencySymbol', propertyMappings.get('CurrencySymbol'));
        System.assertEquals('formattedPriceAsString', propertyMappings.get('FormattedPriceAsString'));
    }
}
