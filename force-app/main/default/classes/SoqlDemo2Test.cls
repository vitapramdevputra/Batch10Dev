@istest
public class SoqlDemo2Test {
    @TestSetup
    //preparing common data.
    //it will run before testmethod runs.
    static void makeData(){
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
         insert listAcc;
    }

    @isTest
    private static void testSoqlChildParent1() {
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
        insert listAcc;

        list<contact> newContacts = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact();
            c.LastName = 'soql test ' + i;
            if (i < 100) {
                c.AccountId = acc.id;
            } else if(i<200){
                c.accountid = acc2.id;
            } else if(i < 300){
                c.AccountId = acc3.id;
            }
            newContacts.add(c);
        }
        insert newContacts;
        //we consumed some heap size, 2 dmls, 303 dml rows

        //2. call method
        test.startTest(); //this will reset governor limit for our method.
        //governor limit will be reset to 0 here.
        SoqlDemo2.childToParent_soql1();
        test.stopTest();
        system.assertEquals(300, newContacts.size());
    }

    @isTest
    private static void testSoqlParentTochild1() {
        //1. prepare data
            //accounts with type = 'customer direct'
            //some opportunities for those accounts
        //if we want to use data prepared in TestSetup, we must do soql. OKAY?
         List<account> listAcc = [select id, type, name from account];//how many records this SOQL will fetch? 3
         for (account ac : listAcc) {
             ac.type = 'Customer - Direct';
         }
         update listAcc;

         List<Opportunity> listOpps = new List<Opportunity>();
         for (Integer i = 0; i < 300; i++) {
             Opportunity op = new Opportunity();
             op.Name = 'Test opp ' + i;
             op.StageName = 'Closed Won';
             op.CloseDate = Date.today();
             if (i < 100) {
                 op.AccountId = listAcc[0].Id;
             } else if (i < 200) {
                op.AccountId = listAcc[1].Id;
             } else {
                op.AccountId = listAcc[2].Id;
             }
             listOpps.add(op);
         }
         insert listOpps;
         
         Test.startTest();
         SoqlDemo2.parentToChild_soql1();
         Test.stopTest();
    }
}
