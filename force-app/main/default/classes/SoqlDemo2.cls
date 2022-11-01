public class SoqlDemo2 {
    public static void childToParent_soql1() {
        //list<sObject> on whichever object we are doing query.
        List<contact> listContact = [select id, name, account.name, account.Industry from contact 
                        where account.industry = 'Energy'];
        for (contact eachContact : listContact) {
            string accName = eachContact.account.name;
            string accIndustry = eachContact.account.Industry;//will this work?
            system.debug('contact name is ' + eachContact.name + ' account name => ' + accName);
        }
    }
    public static void parentToChild_soql1() {
        list<account> listAccWithOpps  = [select id, name, annualrevenue, type, 
                            (select id, name, amount, stagename from opportunities where stageName = 'Closed Won') 
                            from account where type = 'Customer - Direct'];
        //account name, its annual revenue
            //opp name --> amount -->
         for (account eachAcc : listAccWithOpps) {
             system.debug('account name is ' + eachAcc.Name + ' and annual revenue is ' + eachAcc.AnnualRevenue);
             List<Opportunity> listOpp = eachAcc.Opportunities;
             for (opportunity eachOpp : listOpp) {
                 system.debug('opp name is ' + eachOpp.Name);
                 system.debug('oppp amount is ' + eachOpp.Amount);
             }
             system.debug('-------');
         }   
    }

    public static void parentToChild_soql2() {
        list<salesforce_project__c> listSP = [select id, name, project_name__c, 
                            (select priority__c, name from salesforce_tickets__r) 
                            from salesforce_project__c];
        integer totalHP = 0;
        for (salesforce_project__c eachSP : listSP) {
            system.debug('project name is ' + eachSP.project_name__c);
            List<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r; 
            //how to get count of the list?
            integer totalTickets = listST.size();
            system.debug('total tickets in project is ' + totalTickets);
            //# of High priority tickets in each project.
            integer eachProjectHP = 0;
            for (salesforce_ticket__c eachST : listST) {
                system.debug('eachST ==> ' + eachST);
                if (eachST.priority__c == 'High') {
                    eachProjectHP++;
                    totalHP++;
                }
            }
            system.debug('# of High priority tickets ' + eachProjectHP);
        }
        system.debug('total # of High priority tickets '+ totalHP);
    }
}
