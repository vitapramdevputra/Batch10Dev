trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    //check if switch is ON or OFF.
    TriggerSwitch__c accountSwitch = TriggerSwitch__c.getInstance('account');
    boolean accSwitch = accountSwitch.switch__c; //checkbox field
    if (accSwitch == false) {
        return;
    }
    //if OFF
        //return

    system.debug('---start---');
    if (Trigger.isBefore) {
        //call some async method.
        //when we call future method, we do not get job id.
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //udpate VIP field for all its contacts.
        AccountTriggerHandler.updateVIPforAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    system.debug('---end---');












    /*

     Map<id, account> newAccMap = trigger.newMap;
    map<id, account> oldAccMap = trigger.oldMap;

    if (trigger.isBefore && trigger.isUpdate) {
        set<id> setAccIds = newAccMap.keySet();
        integer countWSupdated = 0;

        for (ID eachId : setAccIds) {
            Account oldAccount = oldAccMap.get(eachId);
            string oldWebSite = oldAccount.Website;

            Account newAccount = newAccMap.get(eachId);
            string newWebsite = newAccount.Website;

            if (oldWebsite != newWebsite) {
                countWSupdated++;
                system.debug('For account ' + newAccount.Name + ', website is changed to ' + newwebsite);
            }
        }
        system.debug('# of account website updated ==> ' + countWSUpdated);
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
       set<id> setAccIds = newAccMap.keySet();
       set<id> setAccIds2 = oldAccMap.keySet();

       for (id eachId : setAccIds) {
           system.debug('each id which is also key of maps ==> ' + eachId);
           Account newAccount = newAccMap.get(eachId);
           system.debug('new Account name ==> ' + newAccount.Name);

           Account oldAccount = oldAccMap.get(eachId);
           system.debug('old Account name ==> ' + oldAccount.Name);
       }

    }


    
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old map => ' + oldAccMap);
        system.debug('before insert new map => ' + newAccMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old map => ' + oldAccMap);
        system.debug('after insert new map => ' + newAccMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old map => ' + oldAccMap);
        system.debug('before update new map => ' + newAccMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old map => ' + oldAccMap);
        system.debug('after update new map => ' + newAccMap);
    }

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old map => ' + oldAccMap);
        system.debug('before insert new map => ' + newAccMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old map => ' + oldAccMap);
        system.debug('after insert new map => ' + newAccMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old map => ' + oldAccMap);
        system.debug('before update new map => ' + newAccMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old map => ' + oldAccMap);
        system.debug('after update new map => ' + newAccMap);
    }

    if (trigger.isAfter) {
        list<account> newAccounts = trigger.new;

        set<id> setAccIds = new set<id>();
        for (account eachAcc : newAccounts) {
            setAccIds.add(eachAcc.Id);
        }
        system.debug('set of ids ==> ' + setAccIds);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        list<account> newAccounts = trigger.new;
        for (account newAcc : newAccounts) {
            system.debug('NEW acc id ==> ' + newAcc.id + ', NEW acc name ==> ' + newAcc.Name);
        }
        list<account> oldAccounts = trigger.old;
        for (account oldAcc : oldAccounts) {
            system.debug('OLD acc id ==> ' + oldAcc.id + ', NEW acc name ==> ' + oldAcc.Name);
        }
    }

    if (Trigger.isBefore && Trigger.isInsert) {
       system.debug('before insert trigger.old ==> ' + trigger.old);

    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert trigger.old ==> ' + trigger.old);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger.old ==> ' + trigger.old);
 
     }
     if (Trigger.isAfter && Trigger.isUpdate) {
         system.debug('after update trigger.old ==> ' + trigger.old);
     }

    List<account> newAccounts = trigger.new;
    system.debug('number of accounts ==> ' + newAccounts.size());

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }

    if (Trigger.isBefore) {
        system.debug('BEFORE trigger - insert or update.');
        if (Trigger.isInsert) {
            system.debug('account before insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('account before update trigger called.');
        }
    }
    if (Trigger.isAfter) {
        system.debug('AFTER trigger - insert or update.');
        if (Trigger.isInsert) {
            system.debug('account after insert trigger called');
        } 
        if (Trigger.isUpdate) {
            system.debug('account after update trigger called.');
        }
    }*/
    /*
if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account after insert trigger called');
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account before update trigger called');
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account after update trigger called');
    }
    */
/*if (trigger.isInsert) {
        system.debug('account before insert trigger called');
    }
    if (trigger.isUpdate) {
        system.debug('account before update trigger called');
    }*/
    /*if (trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }*/
}