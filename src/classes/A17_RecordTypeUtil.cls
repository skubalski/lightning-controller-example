/**
 * Created by sebastiankubalski on 11/07/2017.
 */

public with sharing class A17_RecordTypeUtil {
    public static Map<String, Map<String, Id>> getRecordTypesFromSql() {
        Map<String, Map<String, Id>> recordTypes = new Map<String, Map<String, Id>>();

        for(RecordType recType: A17_SqlFactory.getRecordTypes()) {
            if(recordTypes.containsKey(recType.SobjectType)) {
                recordTypes.get(recType.SobjectType).put(recType.DeveloperName, recType.Id);
            } else {
                recordTypes.put(recType.SobjectType, new Map<String, Id> {recType.DeveloperName => recType.Id});
            }

        }
        return recordTypes;
    }

    public static Map<String, Map<String, Id>> getRecordTypesFromSchema() {
        Map<String, Map<String, Id>> recordTypes = new Map<String, Map<String, Id>>();
        Map<String, Schema.SObjectType> description = Schema.getGlobalDescribe();
        for(String obj: description.keySet()) {
            Map<String, Id> objRecordTypes = new Map<String, Id>();
            for(Schema.RecordTypeInfo recordTypeInfo: description.get(obj).getDescribe().getRecordTypeInfos()) {
                objRecordTypes.put(recordTypeInfo.getName(), recordTypeInfo.getRecordTypeId());
            }
            recordTypes.put(obj, objRecordTypes);
        }
        return recordTypes;
    }

    public static Id getRecordTypeId(Map<String, Map<String, Id>> recordTypes, String sobjectName, String developerName) {
        if(recordTypes.containsKey(sobjectName)) {
            Map<String, Id> recordTypesByObject = recordTypes.get(sobjectName);
            if(recordTypesByObject.containsKey(developerName)) {
                return recordTypesByObject.get(developerName);
            } else {
                throw new A17_RecordTypeUtil.IncorrectDeveloperNameException();
            }
        } else {
            throw new A17_RecordTypeUtil.IncorrectSobjectNameException();
        }
    }

    public class IncorrectSobjectNameException extends Exception {}

    public class IncorrectDeveloperNameException extends Exception {}
}