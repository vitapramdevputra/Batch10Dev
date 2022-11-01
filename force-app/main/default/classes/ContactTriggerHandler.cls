public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
                                    Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
        for (Contact eachContact : conTriggerNew) {
            //check if exiting LEADSOURCE is Partner Referral.
            //old contact record?
            Contact oldContact = conTriggerOldMap.get(eachContact.Id);
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update \'Partner Referral\' Contacts.');
            }
        }
    }

    public static void contactUpdateValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
                                    Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            if (eachContact.LeadSource != conTriggerOldMap.get(eachContact.id).LeadSource) {
                //how to fetch custom label text in apex?
                string customMessage = system.label.ContactValidation2;
                eachContact.LeadSource.addError(customMessage);
            }
        }
    }
}
