@isTest
public with sharing class DmlDemoTest {
    @isTest
    private static void dmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();
        List<Account> listAcc=[select id,name from Account];
        System.assertEquals(1, listAcc.size());
        System.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @isTest 
    private static void dmlDemoUpdate2Test() {
        Account acc =new Account();
        acc.Name='SoftInnovas Incc';
        insert acc;
        DmlDemo.dmlUpdateDemo_2();

        List<Contact> listCnt=[select id,name from Contact];
        System.assertEquals(1, listCnt.size());
        System.assertEquals('Biden', listCnt[0].Name);



    }

}
