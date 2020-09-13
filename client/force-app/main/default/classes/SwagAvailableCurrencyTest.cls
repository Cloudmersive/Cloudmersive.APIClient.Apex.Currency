@isTest
private class SwagAvailableCurrencyTest {
    @isTest
    private static void equalsSameInstance() {
        SwagAvailableCurrency availableCurrency1 = SwagAvailableCurrency.getExample();
        SwagAvailableCurrency availableCurrency2 = availableCurrency1;
        SwagAvailableCurrency availableCurrency3 = new SwagAvailableCurrency();
        SwagAvailableCurrency availableCurrency4 = availableCurrency3;

        System.assert(availableCurrency1.equals(availableCurrency2));
        System.assert(availableCurrency2.equals(availableCurrency1));
        System.assert(availableCurrency1.equals(availableCurrency1));
        System.assert(availableCurrency3.equals(availableCurrency4));
        System.assert(availableCurrency4.equals(availableCurrency3));
        System.assert(availableCurrency3.equals(availableCurrency3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagAvailableCurrency availableCurrency1 = SwagAvailableCurrency.getExample();
        SwagAvailableCurrency availableCurrency2 = SwagAvailableCurrency.getExample();
        SwagAvailableCurrency availableCurrency3 = new SwagAvailableCurrency();
        SwagAvailableCurrency availableCurrency4 = new SwagAvailableCurrency();

        System.assert(availableCurrency1.equals(availableCurrency2));
        System.assert(availableCurrency2.equals(availableCurrency1));
        System.assert(availableCurrency3.equals(availableCurrency4));
        System.assert(availableCurrency4.equals(availableCurrency3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagAvailableCurrency availableCurrency1 = SwagAvailableCurrency.getExample();
        SwagAvailableCurrency availableCurrency2 = new SwagAvailableCurrency();

        System.assertEquals(false, availableCurrency1.equals(availableCurrency2));
        System.assertEquals(false, availableCurrency2.equals(availableCurrency1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagAvailableCurrency availableCurrency1 = SwagAvailableCurrency.getExample();
        SwagAvailableCurrency availableCurrency2 = new SwagAvailableCurrency();

        System.assertEquals(false, availableCurrency1.equals('foo'));
        System.assertEquals(false, availableCurrency2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagAvailableCurrency availableCurrency1 = SwagAvailableCurrency.getExample();
        SwagAvailableCurrency availableCurrency2 = new SwagAvailableCurrency();
        SwagAvailableCurrency availableCurrency3;

        System.assertEquals(false, availableCurrency1.equals(availableCurrency3));
        System.assertEquals(false, availableCurrency2.equals(availableCurrency3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagAvailableCurrency availableCurrency1 = SwagAvailableCurrency.getExample();
        SwagAvailableCurrency availableCurrency2 = new SwagAvailableCurrency();

        System.assertEquals(availableCurrency1.hashCode(), availableCurrency1.hashCode());
        System.assertEquals(availableCurrency2.hashCode(), availableCurrency2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagAvailableCurrency availableCurrency1 = SwagAvailableCurrency.getExample();
        SwagAvailableCurrency availableCurrency2 = SwagAvailableCurrency.getExample();
        SwagAvailableCurrency availableCurrency3 = new SwagAvailableCurrency();
        SwagAvailableCurrency availableCurrency4 = new SwagAvailableCurrency();

        System.assert(availableCurrency1.equals(availableCurrency2));
        System.assert(availableCurrency3.equals(availableCurrency4));
        System.assertEquals(availableCurrency1.hashCode(), availableCurrency2.hashCode());
        System.assertEquals(availableCurrency3.hashCode(), availableCurrency4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagAvailableCurrency availableCurrency = new SwagAvailableCurrency();
        Map<String, String> propertyMappings = availableCurrency.getPropertyMappings();
        System.assertEquals('isOCurrencyCode', propertyMappings.get('ISOCurrencyCode'));
        System.assertEquals('currencySymbol', propertyMappings.get('CurrencySymbol'));
        System.assertEquals('currencyEnglishName', propertyMappings.get('CurrencyEnglishName'));
        System.assertEquals('countryName', propertyMappings.get('CountryName'));
        System.assertEquals('countryThreeLetterCode', propertyMappings.get('CountryThreeLetterCode'));
        System.assertEquals('countryISOTwoLetterCode', propertyMappings.get('CountryISOTwoLetterCode'));
        System.assertEquals('isEuropeanUnionMember', propertyMappings.get('IsEuropeanUnionMember'));
    }
}
