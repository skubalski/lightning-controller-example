/**
 * Created by sebastiankubalski on 10/07/2017.
 */
({
    submitHelper: function (component) {
        component.getEvent("A17_DoLeaveRequestBetweenDates").setParams({
            startDate: component.find('startDate').get('v.value'),
            endDate: component.find('endDate').get('v.value')
        }).fire();
        component.getEvent('A17_LeaveRequestExampleCloseSecondStep').fire();
    }
})