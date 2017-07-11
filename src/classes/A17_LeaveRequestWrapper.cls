/**
 * Created by sebastiankubalski on 11/07/2017.
 */

public with sharing class A17_LeaveRequestWrapper {
    public Id id;
    public Id recordTypeId;
    public String comment;
    public Date endDate;
    public Date startDate;
    public String status;

    public A17_LeaveRequestWrapper(Leave_Request__c leaveRequest) {
        this.id = leaveRequest.Id;
        this.recordTypeId = leaveRequest.RecordTypeId;
        this.comment = leaveRequest.Comment__c;
        this.endDate = leaveRequest.End_Date__c;
        this.startDate = leaveRequest.Start_Date__c;
        this.status = leaveRequest.Status__c;
    }

    public static List<A17_LeaveRequestWrapper> mapList(List<Leave_Request__c> leaveRequests) {
        List<A17_LeaveRequestWrapper> leaveRequestWrappers = new List<A17_LeaveRequestWrapper>();
        for(Leave_Request__c leaveRequest: leaveRequests) {
            leaveRequestWrappers.add(new A17_LeaveRequestWrapper(leaveRequest));
        }
        return leaveRequestWrappers;
    }
}