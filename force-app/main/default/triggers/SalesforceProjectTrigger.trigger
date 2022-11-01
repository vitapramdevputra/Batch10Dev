trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (Trigger.isAfter && trigger.isInsert) {
        //call method to create default ticket.
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);
        system.debug('calling future method....');
        SalesforceProjectTriggerHandler.updateDescription(Trigger.newMap.keySet());
        system.debug('DONE calling future method....');
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        //validation method
        //SalesforceProjectTriggerHandler.validateProjectCompletion(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spCompletedStatus(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
}