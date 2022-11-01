public class AccountSchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
        //you can write here any apex code.
        //you can call handler, or future method, or queueable, or batch, OR ANYTHING.
        AccountsBatch ab = new AccountsBatch();
        database.executeBatch(ab);
    }
}
