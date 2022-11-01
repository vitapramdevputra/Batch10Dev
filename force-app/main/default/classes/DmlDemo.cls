public class DmlDemo {
    public static void dmlInsertDemo_stndObj1() {
        //1. create new instance of sObject
        Account acc = new account();
        //2. set fields
        acc.name = 'SoftInnovas';
        //3. set other fields
        acc.phone = '987654321';
        //4. insert
        insert acc;
    }

    public static void dmlInsertDemo_cstmObj1() {
        //1. new instance
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Teach DML to super Batch 10';
        sp.Description__c = 'All are doing great.';
        sp.Status__c = 'New';
        //insert dml
        insert sp;
    }

    public static void dmlUpdateDemo1() {
        Account acc = new account();
        acc.name = 'anything';
        system.debug('BEFORE INSERTING -> ' + acc);
        insert acc;
        system.debug('after inserting -> ' + acc);

        //updaet account name
        acc.Name = 'Softinnovas Inc';
        update acc;
        system.debug('after updating -> ' + acc);
    }

    public static void dmlUpdateDemo3() {
        account acc = [select id, name from account where name = 'SoftInnovas' limit 1];

        //update name
        acc.Name = 'SoftInnvas Inc.';
        acc.phone = '987654321'; //we CAN set without querying the field.
        update acc;
    }
}
