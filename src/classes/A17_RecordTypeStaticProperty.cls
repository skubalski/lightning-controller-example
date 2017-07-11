/**
 * Created by sebastiankubalski on 11/07/2017.
 */

public with sharing class A17_RecordTypeStaticProperty {
    private static Map<String, Map<String, Id>> recordTypesFromSchema;
    private static Map<String, Map<String, Id>> recordTypesFromSql;

    static {
        A17_RecordTypeStaticProperty.recordTypesFromSchema = A17_RecordTypeUtil.getRecordTypesFromSchema();
        A17_RecordTypeStaticProperty.recordTypesFromSql = A17_RecordTypeUtil.getRecordTypesFromSql();
    }

    public static Id getRecordTypeIdFromSchema(String sobjectName, String developerName) {
        return A17_RecordTypeUtil.getRecordTypeId(
                A17_RecordTypeStaticProperty.recordTypesFromSchema,
                sobjectName,
                developerName
        );
    }

    public static Id getRecordTypeIdFromSql(String sobjectName, String developerName) {
        return A17_RecordTypeUtil.getRecordTypeId(
                A17_RecordTypeStaticProperty.recordTypesFromSql,
                sobjectName,
                developerName
        );
    }
}