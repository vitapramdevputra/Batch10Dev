List<account> listAcc = new list<account>();

Account acc = new account();
acc.name = 'acc bukl 1';
acc.phone = '987654321';
listAcc.add(acc);

Account acc1 = new account();
acc1.name = 'acc bukl 2';
acc1.phone = '987654321';
listAcc.add(acc1);

Account ac1 = new account();
Account ac2 = new account();

listAcc.add(ac1);
listAcc.add(ac2);

List<Database.SaveResult> results = Database.insert(listAcc, false); //this will ERROR only BAD guys. Good ones will be inserted. 
for(Database.SaveResult eachResult: results){
    //check if successfully inserted.
    if(eachResult.isSuccess()){
        system.debug('account created successfully. Id is ' + eachResult.getId());
    } else {
        system.debug('Bad guy. Error is ' + eachResult.getErrors());
    }
}