Account acc1 =new Account();
acc1.Name='SI Test';
acc1.Industry='Energy';
acc1.Active__c='No';

Account acc2 =new Account();
acc2.Name='UI Test';
acc2.Industry='Energy';
acc2.Active__c='Yes';

Account acc12x=new Account();
Account acc12y=new Account();
Account acc12z=new Account();

List<Account> listAcc =new List<Account>{acc1,acc2,acc12x,acc12y,acc12z};

List<Database.SaveResult> results=Database.insert(listAcc,false);

for (Database.SaveResult eachResult : results) {
    if (eachResult.isSuccess()) {
        System.debug('account succesfully inserted, account id is '+eachResult.getId());
    }else{
        System.debug('Error : '+eachResult.getErrors());
    }
}