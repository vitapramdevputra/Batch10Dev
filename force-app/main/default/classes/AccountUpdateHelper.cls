public class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsite(List<id> accIds) {
        list<account> updateAccounts = new list<account>();
        for (account acc : [select id, website from account where id in :accIds]) {
            acc.Website = 'www.softinnovas.com';
            updateAccounts.add(acc);
        }
        update updateAccounts;  
    }
}
