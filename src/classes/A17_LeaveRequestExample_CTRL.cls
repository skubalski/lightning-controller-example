/**
 * Created by sebastiankubalski on 10/07/2017.
 */

public with sharing class A17_LeaveRequestExample_CTRL {
    @AuraEnabled
    public static A17_ResponseWrapper getAllLeaveRequests() {
        try {
            return new A17_ResponseWrapper(A17_SqlFactory.getAllLeaveRequests());
        } catch (Exception e) {
            return new A17_ResponseWrapper(e.getMessage());
        }
    }

    @AuraEnabled
    public static A17_ResponseWrapper searchLeaveRequest(String searchString) {
        try {
            return new A17_ResponseWrapper(A17_SqlFactory.searchLeaveRequests(searchString));
        } catch (Exception e) {
            return new A17_ResponseWrapper(e.getMessage());
        }
    }

    @AuraEnabled
    public static A17_ResponseWrapper getLeaveRequestsByUser(Id userId) {
        try {
            return new A17_ResponseWrapper(A17_SqlFactory.getLeaveRequestsByUser(userId));
        } catch (Exception e) {
            return new A17_ResponseWrapper(e.getMessage());
        }
    }

    @AuraEnabled
    public static A17_ResponseWrapper getLeaveRequestsByCurrentUser() {
        try {
            return new A17_ResponseWrapper(A17_SqlFactory.getLeaveRequestsByUser(UserInfo.getUserId()));
        } catch (Exception e) {
            return new A17_ResponseWrapper(e.getMessage());
        }
    }

    @AuraEnabled
    public static A17_ResponseWrapper getLeaveRequestByType(String typeName) {
        try {
            Id recordTypeId =
                    A17_RecordTypeSingleton.getInstance().getRecordTypeIdFromSchema('Leave_Request__c', typeName);
            return new A17_ResponseWrapper(A17_SqlFactory.getLeaveRequestByType(recordTypeId));
        } catch (Exception e) {
            return new A17_ResponseWrapper(e.getMessage());
        }
    }

    @AuraEnabled
    public static A17_ResponseWrapper getHerokuData() {
        try {
            return new A17_ResponseWrapper(A17_HerokuService.getData());
        } catch (Exception e) {
            return new A17_ResponseWrapper(e.getMessage());
        }
    }

    @AuraEnabled
    public static A17_ResponseWrapper getLeaveRequestBetweenDates(Date startDate, Date endDate) {
        try {
            return new A17_ResponseWrapper(A17_SqlFactory.getLeaveRequestBetweenDates(startDate, endDate));
        } catch (Exception e) {
            return new A17_ResponseWrapper(e.getMessage());
        }
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
    public static Map<String, String> getUsersByRemainingDays(Integer remainingDays) {
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