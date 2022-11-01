@isTest
public with sharing class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
         //1. START: prepare data
         List<Account> listAcc = new list<account>();
         for (Integer i = 0; i < 900; i++) {
             Account acc3 = new account();
             acc3.name = 'PI Test ' + i;
             acc3.Industry = 'Banking';
             listAcc.add(acc3);
         }
         insert listAcc;
    }

    @isTest
    private static void testAccQueue() {
        List<account> listAcc = [select id, name from account];
        
        Test.startTest();
        AccountsQueueableExample aq = new AccountsQueueableExample(listAcc);
        system.enqueueJob(aq);
        Test.stopTest();

        //assertion
        list<account> results = [select id, name from account where name like '%SI%'];
        system.assertEquals(900, results.size());

    }


}
