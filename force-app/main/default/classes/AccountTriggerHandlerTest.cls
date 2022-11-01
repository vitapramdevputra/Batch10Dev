@isTest
public class AccountTriggerHandlerTest {
    @isTest
    private static void testUpdateDescription1() {
        //1. prepare data
        Account acc = new account();
        acc.name = 'SI Test';
        acc.Industry = 'Energy';
        acc.Active__c = 'Yes';

        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';
        acc2.Active__c = 'Yes';

        Account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Banking';
        List<account> listAcc = new list<account>{acc, acc2, acc3};
        //2. dml will automatically call trigger, and its handler method too.
        insert listAcc;

        //3. assertion
        list<account> accounts = [select id, description, Active__c from account where Active__c = 'Yes' ];
        system.assert(accounts[0].Description.contains('active'));

    }
    @isTest
    private static void testUpdateDescription2() {
        //1. prepare data
        Account acc = new account();
        acc.name = 'SI Test';
        acc.Industry = 'Energy';

        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Banking';
        List<account> listAcc = new list<account>{acc, acc2, acc3};
        //2. dml will automatically call trigger, and its handler method too.
        insert listAcc;

        acc.Active__c = 'Yes';
        acc2.Active__c = 'Yes';
        acc3.Active__c = 'Yes';
        List<account> listAcc2 = new list<account>{acc, acc2, acc3};
        Test.startTest();
        update listAcc2;
        Test.startTest();

        //3. assertion
        list<account> accounts = [select id, description, Active__c from account where Active__c = 'Yes' ];
        system.assert(accounts[0].Description.contains('active'));

    }


    @istest
    private static void testVIPUpdate() {
          //1. prepare data
          Account acc = new account();
          acc.name = 'SI Test';
          acc.Industry = 'Energy';
  
          Account acc2 = new account();
          acc2.name = 'UI Test';
          acc2.Industry = 'Energy';
          List<account> listAcc = new list<account>{acc, acc2};
          //2. dml will automatically call trigger, and its handler method too.
          insert listAcc;

            list<contact> newContacts = new list<contact>();
            for (Integer i = 0; i < 200; i++) {
                contact c = new contact();
                c.LastName = 'trigger test ' + i;
                if (i < 100) {
                    c.AccountId = acc.id;
                } else if(i<200){
                    c.accountid = acc2.id;
                } 
                newContacts.add(c);
            }
            insert newContacts;
            
            //update vip field of accounts
            acc.VIP__c = true;
            acc2.VIP__c = true;
            List<account> listAcc2 = new list<account>{acc, acc2};
            //update accounts
            update listAcc2;

            //assertion
            //check all contact's vip field is true.
            list<contact> contacts = [select id, vip__c, name from contact];
            system.assertEquals(true, contacts[0].VIP__c);

    }
}
