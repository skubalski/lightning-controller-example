/**
 * Created by sebastiankubalski on 11/07/2017.
 */

public with sharing class A17_RecordTypeSingleton {
    private static A17_RecordTypeSingleton instance;

    private Map<String, Map<String, Id>> recordTypesFromSql;
    private Map<String, Map<String, Id>> recordTypesFromSchema;

    public Id getRecordTypeIdFromSql(String sobjectName, String developerName) {
        return A17_RecordTypeUtil.getRecordTypeId(this.recordTypesFromSql, sobjectName, developerName);
    }

    public Id getRecordTypeIdFromSchema(String sobjectName, String developerName) {
        return A17_RecordTypeUtil.getRecordTypeId(this.recordTypesFromSchema, sobjectName, developerName);
    }

    private A17_RecordTypeSingleton(){}

    public static A17_RecordTypeSingleton getInstance() {
        if(A17_RecordTypeSingleton.instance == null) {
            A17_RecordTypeSingleton.setInstance();
        }
        return A17_RecordTypeSingleton.instance;
    }

    private static void setInstance() {
        A17_RecordTypeSingleton.instance = new A17_RecordTypeSingleton();
    }
}