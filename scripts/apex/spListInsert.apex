List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>();
for (Integer i = 0; i < 50; i++) {
    Salesforce_Project__c sp = new Salesforce_Project__c();
    sp.Project_Name__c = 'Learn SFDC -- ' + i;
    sp.Description__c = 'All good';
    listSP.add(sp);
}
insert listSP;