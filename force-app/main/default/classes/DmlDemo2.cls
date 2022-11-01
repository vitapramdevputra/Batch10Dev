public class DmlDemo2 {
   public static void dmlInsertDemo2() {
       Account acc = [select id, name from account ORDER BY CreatedDate desc limit 1];

       contact cnt = new Contact();
       cnt.LastName = 'Biden';
       //establish relationship with account
       cnt.AccountId = acc.Id;
       insert cnt;
   }

   public static void dmlInsertDemo3() {
       Salesforce_Project__c sp = [select id from Salesforce_Project__c ORDER BY CreatedDate desc limit 1];

       //create new ticket
       Salesforce_Ticket__c st = new Salesforce_Ticket__c();
       st.Subject__c = 'Learn APEX DML';
       st.Priority__c = 'High';
       st.Status__c = 'New';
       st.Requested_by_date__c = date.newInstance(2022, 9, 09);
       st.Salesforce_Project__c = sp.id;
       insert st;
   }

   public static void dmlInsertWrong1() {
        Account acc = new account();
        acc.name = 'SoftInnovas99';
        acc.phone = '987654321';
        insert acc;

        Account acc1 = new account();
        acc1.name = 'SoftInnovas77';
        acc1.phone = '987654321';
        insert acc1;
   }

   public static void dmlInsertWrong2() {
       for (Integer i = 0; i < 155; i++) {
           account acc2 = [select id from account limit 1];
        Account acc = new account();
        acc.name = 'SoftInnovas99';
        acc.phone = '987654321';
        insert acc;
       }
   }

   public static void dmlMultipleRecord_right1() {
        List<account> listAcc = new list<account>();

        Account acc = new account();
        acc.name = 'acc bukl 1';
        acc.phone = '987654321';
        listAcc.add(acc);

        Account acc1 = new account();
        acc1.name = 'acc bukl 2';
        acc1.phone = '987654321';
        listAcc.add(acc1);

        Account acc2 = new account();
        acc2.name = 'acc bukl 1';
        acc2.phone = '987654321';
        listAcc.add(acc2);

        insert listAcc;
   }

   public static void dmlMultipleRecord_right2() {
       List<Account> listAcc = new list<account>();
       for (Integer i = 0; i < 155; i++) {
            Account acc2 = new account();
            acc2.name = 'SoftInnovas 3Oct v'+i;
            acc2.phone = '987654321';
            acc2.Active__c = 'Yes';
            listAcc.add(acc2);
       }
       insert listAcc;
   }

   public static void dmlMultipleRecordUpdate_right1() {
       List<Account> listAcc = [select id, name from account 
       ORDER BY CreatedDate desc limit 155];

       List<Account> updateAcc = new List<Account>();

       for (account eachAcc : listAcc) {
           eachAcc.Name = eachAcc.name + ' via B.0';
           //add to the newly created list
           updateAcc.add(eachAcc);
       }
       if (!updateAcc.isEmpty()) {
            update updateAcc;    
       }
       
   }

}
