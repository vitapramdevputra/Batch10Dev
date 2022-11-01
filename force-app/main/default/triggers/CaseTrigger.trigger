trigger CaseTrigger on Case (before insert, before update) {
    if (trigger.isInsert) {
        system.debug('before insert');    
    }
    if (trigger.isUpdate) {
        system.debug('before update');
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('count # of times trigger runs ==> ' + CaseTriggerHandler.countTriggerExecution);
        CaseTriggerHandler.countTriggerRecords += Trigger.size;
        system.debug('count # of records trigger ==> ' + CaseTriggerHandler.countTriggerRecords);
    }
    
}