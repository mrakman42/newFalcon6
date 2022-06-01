@isTest
public with sharing class SoqlDemo2Test {
    @TestSetup
   
    private static void setupData() {
        Account acc1=new Account();
        acc1.Name='SI Test';
        acc1.Industry='Energy';

        Account acc2=new Account();
        acc2.Name='UI Test';
        acc2.Industry='Energy';
        
        Account acc3=new Account();
        acc3.Name='PI Test';
        acc3.Industry='Banking';

        List<Account> listAcc=new List<Account>{acc1,acc2,acc3};
        insert listAcc;

        List<contact> listContact=new List<Contact>();
        for (Integer i = 0; i < 300; i++) {
            Contact c =new Contact();
            c.LastName='Test SOQL';
            if (i<100) {
                c.accountid=acc1.Id;
            } else if(i<200){
                c.accountid=acc2.Id;
            }else if (i<300) {
                c.accountid=acc3.Id;
            }
            listContact.add(c);
        }
        insert listContact;

        }
        @istest
        private static void soqlDemoTest1() {
            Test.startTest();
             SoqlDemo2.childToParent_Soql1();
             Test.stopTest();
        }
       
        @isTest
        private static void sampleSoql4TEST() {
            list<account> listAccounts = [select id, name, type from account];
            for (account acc : listAccounts) {
                acc.type = 'Customer - Direct';
            }
            update listAccounts;
    
            List<Opportunity> createOpps = new List<Opportunity>();
            for (Integer i = 0; i < 300; i++) {
                Opportunity o = new Opportunity();
                o.Name = 'opp1';
                o.StageName = 'Closed Lost';
                o.CloseDate = date.today();
                if(i < 100){
                    o.AccountId = listAccounts[0].id;
                }
                else if(i< 200){
                    o.AccountId =  listAccounts[1].id;
                }
                else if(i< 300){
                    o.AccountId =  listAccounts[2].id;
                }
                createOpps.add(o);
            }
            insert createOpps;
    
            Test.startTest();
            SoqlDemo2.sampleSoql4();
            Test.stopTest();
        }


}
