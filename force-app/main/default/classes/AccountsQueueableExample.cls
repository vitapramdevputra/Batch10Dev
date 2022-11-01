public with sharing class AccountsQueueableExample implements Queueable{
    List<account> listAccount;
    public AccountsQueueableExample(List<account> accs) {
        listAccount = accs;
    }

    public void execute(QueueableContext qc){
        for (account ac : listAccount) {
            ac.Name = ac.Name + ' -- SI';
        }
        update listAccount;
    }
}
