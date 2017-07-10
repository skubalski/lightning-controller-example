<!--
 - Created by sebastiankubalski on 10/07/2017.
 -->

<aura:application description="LeaveRequestExample" controller="A17_LeaveRequestExample_CTRL">
    <aura:attribute name="results" type="String" access="private"/>
    <aura:attribute name="isSecondStep" type="Boolean" access="public"/>
    <aura:attribute name="secondStepCmp" type="Aura.Component[]" access="private"/>

    <aura:handler name="A17_LeaveRequestExampleCloseSecondStep"
                  event="c:A17_LeaveRequestExampleCloseSecondStep"
                  action="{!c.closeSecondStep}"/>

    <aura:handler name="A17_DoLeaveRequestsByUser"
                  event="c:A17_DoLeaveRequestsByUser"
                  action="{!c.doGetLeaveRequestsByUser}"/>

    <aura:handler name="A17_DoLeaveRequestBetweenDates"
                  event="c:A17_DoLeaveRequestBetweenDates"
                  action="{!c.doGetLeaveRequestBetweenDates}"/>

    <aura:handler name="A17_DoUsersByRemainingDays"
                  event="c:A17_DoUsersByRemainingDays"
                  action="{!c.doGetUsersByRemainingDays}"/>

    <aura:if isTrue="{!!v.isSecondStep}">
        <lightning:buttonGroup >
            <lightning:button label="getAllLeaveRequests" onclick="{!c.doGetAllLeaveRequests}"/>
            <lightning:button label="searchLeaveRequest" onclick="{!c.doSearchLeaveRequest}"/>
            <lightning:button label="getLeaveRequestsByUser" onclick="{!c.processLeaveRequestsByUser}"/>
            <lightning:button label="getLeaveRequestsByCurrentUser" onclick="{!c.doGetLeaveRequestsByCurrentUser}"/>
            <lightning:button label="getLeaveRequestByType" onclick="{!c.doGetLeaveRequestByType}"/>
            <lightning:button label="getHerokuData" onclick="{!c.doGetHerokuData}"/>
            <lightning:button label="getLeaveRequestBetweenDates" onclick="{!c.processLeaveRequestBetweenDates}"/>
            <lightning:button label="getLeaveRequestsGroupedByDate" onclick="{!c.doGetLeaveRequestsGroupedByDate}"/>
            <lightning:button label="getLeaveRequestsGroupedByUser" onclick="{!c.doGetLeaveRequestsGroupedByUser}"/>
            <lightning:button label="getUsersByRemainingDays" onclick="{!c.processUsersByRemainingDays}"/>
            <lightning:button label="getApprovalHistories" onclick="{!c.doGetApprovalHistories}"/>
        </lightning:buttonGroup>

        <aura:set attribute="else">
            <div>{!v.secondStepCmp}</div>
        </aura:set>
    </aura:if>

    <ui:outputTextArea value="{!v.results}"/>
</aura:application>