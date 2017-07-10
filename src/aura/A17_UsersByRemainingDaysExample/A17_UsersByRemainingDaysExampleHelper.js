/**
 * Created by sebastiankubalski on 10/07/2017.
 */
({
    submitHelper: function (component) {
        component.getEvent("A17_DoUsersByRemainingDays").setParams({
            numberOfDays: component.find('numberOfDays').get('v.value')
        }).fire();
        component.getEvent('A17_LeaveRequestExampleCloseSecondStep').fire();
    }
})