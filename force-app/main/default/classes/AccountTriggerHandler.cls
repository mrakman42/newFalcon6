public class AccountTriggerHandler {
 
    public static void updateAccountDescription(list<Account> accTriggerNew,
                                                 List<Account> accTriggerOld,
                                                 Map<Id,Account> accTriggerNewMap,
                                                 Map<Id,Account> accTriggerOldMap) {
        System.debug('inside handler method');                                             
        for(account eachAcc: accTriggerNew){
           boolean updateDesc = false;
            if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
                 updateDesc = true;
                                                        }
            if(accTriggerOldMap != null){
                  Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                                                            
                  string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
             //active is changed to 'Yes'
            if(eachAcc.Active__c == 'Yes' &&
                oldAccountActive != 'Yes'
                                        ) {
            updateDesc = true;
                                  }
                 }
           if(updateDesc){
            eachAcc.Description = 'Account is now active. Enjoy!';
              }
         }                                                                   
        
    }

    public static void updateVipForAllAccounts(list<Account> accTriggerNew,
     List<Account> accTriggerOld,
     Map<Id,Account> accTriggerNewMap,
     Map<Id,Account> accTriggerOldMap) {
      System.debug('update all contacts\' VIP field');
      //get set of accunt IDs where only VIP field is updated  
      Set<Id> setAccIds=new Set<Id>();
      for (account eachAcc : accTriggerNew) {
        if (eachAcc.vip__c != accTriggerOldMap.get(eachAcc.Id).Vip__c) {
          setAccIds.add(eachAcc.id);
        }
      }
      //get list of Contacts for Accounts where vVIP is updated 
      List<Contact> listContacts =[select id, name, account.id, vip__c from Contact where Account.Id in:setAccIds ];

      //now we want to update CONTACTS records
      for (contact eachContact : listContacts) {
        Account newAccount=accTriggerNewMap.get(eachContact.Account.Id);
        Boolean newAccVip=newAccount.vip__c;
        eachContact.vip__c=newAccVip;
      }
      if (!listContacts.isEmpty()) {
        update listContacts;
      }
    }
}
