@isTest
public with sharing class AccountTriggerTest {
    @isTest
    private static void testAccTrigger() {
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

        acc.name = 'SI TEST update';
        update acc;
    }
}
