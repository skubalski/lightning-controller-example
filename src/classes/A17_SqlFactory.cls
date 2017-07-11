/**
 * Created by sebastiankubalski on 11/07/2017.
 */

public with sharing class A17_SqlFactory {
    public static List<RecordType> getRecordTypes() {
        return [SELECT Id, DeveloperName, SobjectType FROM RecordType];
    }

    public static List<A17_LeaveRequestWrapper> getAllLeaveRequests() {
        return A17_LeaveRequestWrapper.mapList([
                SELECT Id, RecordTypeId, Comment__c, End_Date__c, Start_Date__c, Status__c
                FROM Leave_Request__c
        ]);
    }

    public static List<A17_LeaveRequestWrapper> searchLeaveRequests(String searchString) {
        String searchPattern = searchString + '%';
        return A17_LeaveRequestWrapper.mapList([
                SELECT Id, RecordTypeId, Comment__c, End_Date__c, Start_Date__c, Status__c
                FROM Leave_Request__c
                WHERE Status__c LIKE :searchPattern
        ]);
    }

    public static List<A17_LeaveRequestWrapper> getLeaveRequestsByUser(Id userId) {
        return A17_LeaveRequestWrapper.mapList([
                SELECT Id, RecordTypeId, Comment__c, End_Date__c, Start_Date__c, Status__c
                FROM Leave_Request__c
                WHERE User__c = :userId
        ]);
    }

    public static List<A17_LeaveRequestWrapper> getLeaveRequestByType(Id recordTypeId) {
        return A17_LeaveRequestWrapper.mapList([
                SELECT Id, RecordTypeId, Comment__c, End_Date__c, Start_Date__c, Status__c
                FROM Leave_Request__c
                WHERE RecordTypeId = :recordTypeId
        ]);
    }

    public static List<A17_LeaveRequestWrapper> getLeaveRequestBetweenDates(Date startDate, Date endDate) {
        return A17_LeaveRequestWrapper.mapList([
                SELECT Id, RecordTypeId, Comment__c, End_Date__c, Start_Date__c, Status__c
                FROM Leave_Request__c
                WHERE Start_Date__c > :startDate AND End_Date__c < :endDate
        ]);
    }
}