public class AccountsBatch implements Database.Batchable<sObject>, Database.stateful{
   integer count = 0;
    //1. start method.
    public database.QueryLocator start(Database.BatchableContext bc){
        //soql to fetch records.
        //on account records
        system.debug('Batch started. ');
        Database.QueryLocator ql = database.getQueryLocator([select id, description from account]);
        return ql;
    }

    public void execute(Database.BatchableContext bc, list<account> scope){
        system.debug('we are in execute method NOW. ');
        for (account acc : scope) {
            acc.Description += '...updated via batch';
        }
        count++;
        system.debug('count is ' + count);
        update scope;
    }

    public void finish(Database.BatchableContext bc){
        system.debug('batch execution finished. Done. Simple? right?');
        system.debug('total number of count is ' + count);
    }
}
