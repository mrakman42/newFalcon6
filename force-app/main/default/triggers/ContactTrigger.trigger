trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
   if (trigger.isBefore&&trigger.isUpdate) {
       ContactTriggerHandler.ContactUpdateValidation1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
       ContactTriggerHandler.ContactUpdateValidation2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
   }
   Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact c : trigger.new) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }

}
   
    /* if (trigger.isBefore) {
        System.debug('we are in BEFORE trigger');
        if (trigger.isInsert) {
            System.debug('before insert trigger called');
        }
        if (trigger.isUpdate) {
            System.debug('before update trigger called');
        }
        
    }
    if (trigger.isAfter) {
        system.debug('We are in AFTER Trigger. SBNC.');
        if (trigger.isInsert) {
            system.debug('AFTER insert trigger callled');
        }
        if (trigger.isUpdate) {
            system.debug('AFTER update trigger called.');
        }
    }*/
