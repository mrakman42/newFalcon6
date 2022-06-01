public class AccountsBatch implements Database.Batchable<SObject>{
    public Integer count=0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1=Database.getQueryLocator([select id,description,Active__c from account]);
        return q1;
    }    
    public void execute(Database.BatchableContext bc, List<Account> scope){
        List<Account> updateAccounts=new List<Account>();
        for (account acc : scope) {
            if (acc.Active__c !='No') {
                acc.Description+= '...updated via BATCH apex!';
                updateAccounts.add(acc);
                count++;
            }
           
        }
        update scope;
    }
    public void finish(Database.BatchableContext bc){
        System.debug('done with updating ALL the Accounts');
    }

}
