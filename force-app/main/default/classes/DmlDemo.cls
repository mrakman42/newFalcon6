public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        Account acc =new Account();
        acc.Name='SoftInnovas';
        acc.Site='www.softinnovas.com';
        acc.Description='salesforce bootcamp';
        
        insert acc;
        System.debug(acc);
    }

    public static void dmlInsertDemo_cstmObj() {
        salesforce_project__c sp= new salesforce_project__c();
        sp.project_name__c='teach DML to falcons';
        sp.Description__c='all are great learners';
        insert sp;
    }

    public static void dmlUpdateDemo_1() {
        Account acc=new Account();
        acc.Name='S';
        insert acc;
        System.debug('inserted '+acc);
        acc.Name='Salesforce Inc';
        update acc;
        System.debug('updated '+acc);

    }

    public static void dmlUpdateDemo_3() {
        Account acc =[select id, name from Account WHERE name='SoftInnovas' ORDER BY CreatedDate DESC LIMIT 1 ];
        acc.Name='SoftInnovas Incc';
        update acc;
        System.debug('updated acc '+acc);

    }
    
    public static void dmlUpdateDemo_2() {
        Account acc=[select id, name from Account WHERE name='SoftInnovas Incc' Limit 1];
        System.debug('account id is '+acc.Id);

        Contact cnt=new Contact();
        cnt.LastName='Biden';
        cnt.AccountId=acc.Id;
        insert cnt;

    }

    public static void dmlMultipleRecordInsert_right() {
        List<Account> listAcc=new List<Account>();
        Account acc1=new Account();
        acc1.Name='bulk acc 1';
        listAcc.add(acc1);

        Account acc2=new Account();
        acc2.Name='bulk acc 2';
        listAcc.add(acc2);

        Account acc3=new Account();
        acc3.Name='bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;


    }

    public static void dmlMultipleRecordInsert2_right() {
        list<account> listAcc = new list<account>();

        account acc = new account();
        acc.Name = 'SoftInnovas 30-Apr22 v0';
        acc.AccountNumber = 'asci-1';
        acc.Active__c = 'Yes';
        listAcc.add(acc);

        for (Integer i = 1; i < 150; i++){
            account acc2 = new account();
            acc2.Name = 'SoftInnovas 30-Apr22 v'+i;
            acc2.AccountNumber = 'asci-1'+i;
            acc2.Active__c = 'Yes';
            listAcc.add(acc2);
        }
        system.debug('size of list ' + listAcc.size());

        if(!listAcc.isEmpty()){
            insert listAcc;
        }

    
    }

}
