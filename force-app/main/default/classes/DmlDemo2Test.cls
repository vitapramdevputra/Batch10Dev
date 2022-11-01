@isTest
public class DmlDemo2Test {
    @isTest
    public static void dmlInsertDemo2TEST() {
        //1. Prepare data
        Account acc = new account();
        acc.name = 'SoftInnovas';
        insert acc;
        //2. call the method
        DmlDemo2.dmlInsertDemo2();
        //3. assert
        //what and how?
        list<contact> listContact = [select id, lastname, AccountId from contact where LastName= 'Biden'];
        system.assertEquals(1, listContact.size());
        system.assertEquals(acc.Id, listContact[0].AccountId);
    }
    @isTest
    public static void dmlInsertDemo3Test() {
        //1. prepare data
         Salesforce_Project__c sp = new Salesforce_Project__c();
         sp.Project_Name__c = 'Teach DML to super Batch 10';
         sp.Description__c = 'All are doing great, still...';
         sp.Status__c = 'New';
         insert sp;

         //2. call the method
         Dmldemo2.dmlInsertDemo3();

         //3. assertion
         List<Salesforce_Ticket__c> stList = [select id, subject__c, salesforce_project__c 
                            from Salesforce_Ticket__c where subject__c = 'Learn APEX DML'];
         system.assertEquals(sp.Id, stList[0].Salesforce_Project__c);
    }
}
