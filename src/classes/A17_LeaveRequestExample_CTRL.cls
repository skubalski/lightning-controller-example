/**
 * Created by sebastiankubalski on 10/07/2017.
 */

public with sharing class A17_LeaveRequestExample_CTRL {
    @AuraEnabled
    public static void getAllLeaveRequests() {}

    @AuraEnabled
    public static void searchLeaveRequest() {}

    @AuraEnabled
    public static void getLeaveRequestsByUser(Id userId) {}

    @AuraEnabled
    public static void getLeaveRequestsByCurrentUser() {}

    @AuraEnabled
    public static void getLeaveRequestByType() {}

    @AuraEnabled
    public static void getHerokuData() {}

    @AuraEnabled
    public static void getLeaveRequestBetweenDates(Date startDate, Date endDate) {}

    @AuraEnabled
    public static void getLeaveRequestsByDate() {}

    @AuraEnabled
    public static void getLeaveRequestsByUser() {}

    @AuraEnabled
    public static void getUsersByRemainingDays() {}

    @AuraEnabled
    public static void getApprovalHistories() {}
}