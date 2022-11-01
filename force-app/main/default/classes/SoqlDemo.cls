public class SoqlDemo {
    public static void accountSOQL_1() {
        //SOQL query returns List<sObject>
        List<Account> listAcc = [select id, name, phone, active__c from account where name like '%A%'];
        system.debug('account list ===> ' + listAcc);
        system.debug('# of records ==> ' + listAcc.size());

        Account acc = [select id, name, phone from account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('acc is ' + acc);
    }

    public static void accountSOQL_2() {
        Account acc = [select id, name,phone, AccountNumber from account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('acc is ' + acc);

        string accName = acc.Name;
        string accPhone = acc.Phone;
        system.debug('acc name is ' + accName);
        system.debug('acc phone is ' + accPhone);
        system.debug('acc account number is ' + acc.AccountNumber);
        system.debug('------');
    }

    public static void accountSOQL_3() {
        List<Account> listAcc = [select id, name,phone, AccountNumber from account ORDER BY CreatedDate DESC];
        system.debug('listAcc is ' + listAcc);

        for (Account eachAccount : listAcc) {
            //to fetch field values we use .
            string accountName = eachAccount.Name;
            string accountPhone = eachAccount.Phone;
            system.debug('acc name is ' + accountName);
            system.debug('acc phone is ' + accountPhone);
            system.debug('acc account number is ' + eachAccount.AccountNumber);
            system.debug('------');
        }
    }

    public static void accountSOQL_filter() {
        string accName = 'Salesforce Inc.';
        list<account> listAcc = [select id, name from account where name = :accName];
        system.debug(listAcc);
    }
    //passing account name in parameter
    public static void accountSOQL_filter(string accName) {
        //get account where name = accName
        list<account> listAcc = [select id, name from account where name = :accName];
        system.debug(listAcc);
    }
}
