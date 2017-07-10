/**
 * Created by sebastiankubalski on 10/07/2017.
 */
({
    doRequest: function (component, actionName, params) {
        var action = component.get(actionName);
        if(!action) {
            throw new Error('Incorrect action name')
        }
        action.setParams(params || {});
        action.setCallback(this, function (response) {
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                var results = response.getReturnValue();
                console.log(results);
                component.set('v.results', JSON.stringify(results, null, 4))
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: ", errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
        $A.enqueueAction(action);
    },
    processSecondStep: function (component, componentName) {
        component.set('v.isSecondStep', true);
        $A.createComponent(componentName, null, function (newComponent) {
            if(component.isValid()) {
                component.set('v.secondStepCmp', newComponent);
            }
        });
    },
    closeSecondStep: function (component) {
        component.set('v.secondStep', null);
        component.set('v.isSecondStep', false);
    }
})