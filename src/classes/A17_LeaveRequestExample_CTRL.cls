/**
 * Created by sebastiankubalski on 10/07/2017.
 */

public with sharing class A17_LeaveRequestExample_CTRL {
    @AuraEnabled
    public static Map<String, String> getAllLeaveRequests() {
        return new Map<String, String>{
                'getAllLeaveRequests' => 'test1'
        };
    }

    @AuraEnabled
    public static Map<String, String> searchLeaveRequest() {
        return new Map<String, String>{
                'searchLeaveRequest' => 'test1'
        };
    }

    @AuraEnabled
    public static Map<String, String> getLeaveRequestsByUser(String userId) {
        return new Map<String, String>{
                'getLeaveRequestsByUser' => userId
        };
    }

    @AuraEnabled
    public static Map<String, String> getLeaveRequestsByCurrentUser() {
        return new Map<String, String>{
                'getLeaveRequestsByCurrentUser' => 'test1'
        };
    }

    @AuraEnabled
    public static Map<String, String> getLeaveRequestByType() {
        return new Map<String, String>{
                'getLeaveRequestByType' => 'test1'
        };
    }

    @AuraEnabled
    public static Map<String, String> getHerokuData() {
        return new Map<String, String>{
                'getHerokuData' => 'test1'
        };
    }

    @AuraEnabled
    public static Map<String, String> getLeaveRequestBetweenDates(Date startDate, Date endDate) {
        return new Map<String, String>{
                'getLeaveRequestBetweenDates_date1' => String.valueOf(startDate),
                'getLeaveRequestBetweenDates_date2' => String.valueOf(endDate)
        };
    }

    @AuraEnabled
    public static Map<String, String> getLeaveRequestsByDate() {
        return new Map<String, String>{
                'getLeaveRequestsByDate' => 'test1'
        };
    }

    @AuraEnabled
    public static Map<String, String> getLeaveRequestsByUser() {
        return new Map<String, String>{
                'getLeaveRequestsByUser' => 'test1'
        };
    }

    @AuraEnabled
    public static Map<String, String> getUsersByRemainingDays() {
        return new Map<String, String>{
                'getUsersByRemainingDays' => 'test1'
        };
    }

    @AuraEnabled
    public static Map<String, String> getApprovalHistories() {
        return new Map<String, String>{
                'getApprovalHistories' => 'test1'
        };
    }
}