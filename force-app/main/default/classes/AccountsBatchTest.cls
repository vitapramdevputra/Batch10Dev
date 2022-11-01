@isTest
public class AccountsBatchTest {
    @isTest
    private static void testAccBatch() {
        //1. START: prepare data
        List<Account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            Account acc3 = new account();
            acc3.name = 'PI Test ' + i;
            acc3.Industry = 'Banking';
            listAcc.add(acc3);
        }
        insert listAcc;
        //END prepare data

        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        database.executeBatch(ab,900);//will this work? 
        Test.stopTest();

        //assertion
        list<account> results = [select id, name, description from account];
        system.assert(results[0].Description.contains('batch'));
    }
}
