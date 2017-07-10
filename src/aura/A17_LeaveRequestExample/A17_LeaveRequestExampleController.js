/**
 * Created by sebastiankubalski on 10/07/2017.
 */
({
    doGetAllLeaveRequests: function (component, event, helper) {
        helper.doRequest(component, 'c.getAllLeaveRequests');
    },
    doSearchLeaveRequest: function (component, event, helper) {
        helper.doRequest(component, 'c.searchLeaveRequest');
    },
    doGetLeaveRequestsByUser: function (component, event, helper) {
        helper.doRequest(component, 'c.getLeaveRequestsByUser', {
            userId: event.getParam('v.userId')
        });
    },
    doGetLeaveRequestsByCurrentUser: function (component, event, helper) {
        helper.doRequest(component, 'c.getLeaveRequestsByCurrentUser');
    },
    doGetLeaveRequestByType: function (component, event, helper) {
        helper.doRequest(component, 'c.getLeaveRequestByType');
    },
    doGetHerokuData: function (component, event, helper) {
        helper.doRequest(component, 'c.getHerokuData');
    },
    doGetLeaveRequestBetweenDates: function (component, event, helper) {
        helper.doRequest(component, 'c.getLeaveRequestBetweenDates', {
            startDate: event.getParam('v.startDate'),
            endDate: event.getParam('v.endDate')
        });
    },
    doGetLeaveRequestsGroupedByDate: function (component, event, helper) {
        helper.doRequest(component, 'c.getLeaveRequestsGroupedByDate');
    },
    doGetLeaveRequestsGroupedByUser: function (component, event, helper) {
        helper.doRequest(component, 'c.getLeaveRequestsGroupedByUser');
    },
    doGetUsersByRemainingDays: function (component, event, helper) {
        helper.doRequest(component, 'c.getUsersByRemainingDays', {
            numberOfDays: event.getParam('numberOfDays')
        });
    },
    doGetApprovalHistories: function (component, event, helper) {
        helper.doRequest(component, 'c.getApprovalHistories');
    },
    processLeaveRequestsByUser: function (component, event, helper) {
        helper.processSecondStep(component, 'c:A17_LeaveRequestsByUserExample');
    },
    processLeaveRequestBetweenDates: function (component, event, helper) {
        helper.processSecondStep(component, 'c:A17_LeaveRequestBetweenDatesExample');
    },
    processUsersByRemainingDays: function (component, event, helper) {
        helper.processSecondStep(component, 'c:A17_UsersByRemainingDaysExample');
    },
    closeSecondStep: function (component, event, helper) {
        helper.closeSecondStep(component);
    }
})