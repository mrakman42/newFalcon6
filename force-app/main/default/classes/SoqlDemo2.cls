public class SoqlDemo2 {
    public static void childToParent_Soql1() {
        List<Contact> listCnt =[select id, name, account.name from Contact WHERE Account.industry ='Energy'];
        for (contact eachContact : listCnt) {
            String accName=eachContact.Account.Name;
            System.debug('contact name is '+eachContact.Name+ ' its acc name is '+accName);

        }
    }


    public static void sampleSoql4() {
        list<account> accountWithOpplist =[select name, annualrevenue, (select name, amount from opportunities 
        where stagename = 'Closed Won') from account where type = 'Customer - Direct'];

        //list<account> 
            //--> list<oppotunities> 
        for (account eachAcc : accountWithOpplist) {
            system.debug('acc name is ' + eachAcc.name + ', annual revenue is ' + eachAcc.AnnualRevenue);
            List<Opportunity> eachAccOpps = eachAcc.Opportunities;
            for (Opportunity opp : eachAccOpps) {
                system.debug(' opp name ' + opp.Name + ', opp amount ' + opp.Amount); //YES
            }
            system.debug('-----------------');
        }
    }

    public static void soqlDemo5() {
        List<salesforce_project__c> listSP=[Select id, name, Project_name__c, (select name, subject__c, priority__c from Salesforce_Tickets__r)FROM salesforce_project__c];
        Integer totalHighPriorityST=0;
        for (salesforce_project__c eachSP : listSP) {
            List<Salesforce_Ticket__c> listST=eachSP.Salesforce_Tickets__r;
            String spName=eachSP.name;
            Integer totalST=listST.size();
            Integer highPriorityST=0;
            for (Salesforce_Ticket__c eachST : listST) {
                if (eachST.Priority__c=='High') {
                    highPriorityST++;
                    totalHighPriorityST++;
                }
            }
            System.debug('Project id: '+spName+', total# ST: '+totalST +', high priority ST: '+highPriorityST);

        }
        System.debug('total high prority tickets in the org '+totalHighPriorityST);
    }
}
