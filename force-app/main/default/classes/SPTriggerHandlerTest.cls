@istest
public class SPTriggerHandlerTest {
    @istest
    private static void testMethod1(){
        Salesforce_Project__c sp=new Salesforce_Project__c();
        sp.Project_Name__c='Teach async to FALCONS';
        sp.Description__c='All 40% are great learners, still';

        Salesforce_Project__c sp1=new Salesforce_Project__c();
        sp1.Project_Name__c='Teach async to FALCONS';
        sp1.Description__c='All 40% are great learners, still';

        List<Salesforce_Project__c> lstSP= new List<Salesforce_Project__c>{sp,sp1};
        insert lstSP;
        Set<Id> spIds=new Set<Id>{sp.Id, sp1.Id};

        Test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(spIds);
        Test.stopTest();

        List<Salesforce_Project__c> sps=[select id, description__c from Salesforce_Project__c];
        System.assert(sps[0].Description__c.containsIgnoreCase('future'));
    }
}
