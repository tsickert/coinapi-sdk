@isTest
private class OASPositionDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASPositionData positionData1 = OASPositionData.getExample();
        OASPositionData positionData2 = positionData1;
        OASPositionData positionData3 = new OASPositionData();
        OASPositionData positionData4 = positionData3;

        System.assert(positionData1.equals(positionData2));
        System.assert(positionData2.equals(positionData1));
        System.assert(positionData1.equals(positionData1));
        System.assert(positionData3.equals(positionData4));
        System.assert(positionData4.equals(positionData3));
        System.assert(positionData3.equals(positionData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPositionData positionData1 = OASPositionData.getExample();
        OASPositionData positionData2 = OASPositionData.getExample();
        OASPositionData positionData3 = new OASPositionData();
        OASPositionData positionData4 = new OASPositionData();

        System.assert(positionData1.equals(positionData2));
        System.assert(positionData2.equals(positionData1));
        System.assert(positionData3.equals(positionData4));
        System.assert(positionData4.equals(positionData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPositionData positionData1 = OASPositionData.getExample();
        OASPositionData positionData2 = new OASPositionData();

        System.assertEquals(false, positionData1.equals('foo'));
        System.assertEquals(false, positionData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPositionData positionData1 = OASPositionData.getExample();
        OASPositionData positionData2 = new OASPositionData();
        OASPositionData positionData3;

        System.assertEquals(false, positionData1.equals(positionData3));
        System.assertEquals(false, positionData2.equals(positionData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPositionData positionData1 = OASPositionData.getExample();
        OASPositionData positionData2 = new OASPositionData();

        System.assertEquals(positionData1.hashCode(), positionData1.hashCode());
        System.assertEquals(positionData2.hashCode(), positionData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPositionData positionData1 = OASPositionData.getExample();
        OASPositionData positionData2 = OASPositionData.getExample();
        OASPositionData positionData3 = new OASPositionData();
        OASPositionData positionData4 = new OASPositionData();

        System.assert(positionData1.equals(positionData2));
        System.assert(positionData3.equals(positionData4));
        System.assertEquals(positionData1.hashCode(), positionData2.hashCode());
        System.assertEquals(positionData3.hashCode(), positionData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPositionData positionData = new OASPositionData();
        Map<String, String> propertyMappings = positionData.getPropertyMappings();
        System.assertEquals('symbolIdExchange', propertyMappings.get('symbol_id_exchange'));
        System.assertEquals('symbolIdCoinapi', propertyMappings.get('symbol_id_coinapi'));
        System.assertEquals('avgEntryPrice', propertyMappings.get('avg_entry_price'));
        System.assertEquals('unrealizedPnl', propertyMappings.get('unrealized_pnl'));
        System.assertEquals('crossMargin', propertyMappings.get('cross_margin'));
        System.assertEquals('liquidationPrice', propertyMappings.get('liquidation_price'));
        System.assertEquals('rawData', propertyMappings.get('raw_data'));
    }
}
