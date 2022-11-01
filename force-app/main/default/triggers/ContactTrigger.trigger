trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
    if (Trigger.isBefore && Trigger.isUpdate) {
        //validate it here.
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}