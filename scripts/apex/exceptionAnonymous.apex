try{
    List<account> la = new list<account>();
    Account ac = new account();
    la.add(ac);

    insert ac;
}  catch(DmlException de){
    system.debug('DML went wrong buddy.');
} catch(Exception e){
    system.debug('something went wrong buddy.');
}

//will below line execute?
system.debug('Apex is SIMPLE.');