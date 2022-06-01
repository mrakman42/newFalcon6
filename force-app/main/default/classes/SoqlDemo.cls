public class SoqlDemo {
    public static void accountSoql_1(){
        List<Account> listAcc=[Select ID, Name from Account WHERE Name LIKE'%A%'];
        System.debug('account list: '+listAcc);
        System.debug('number of counts = '+listAcc.size());
        Account latestAcc =[SELECT Id, name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC LIMIT 1];
        System.debug('account limit 1 --> '+latestAcc);
        String accName=latestAcc.Name;
        String accPhone=latestAcc.Phone;
        System.debug('latest acc name is '+accName+', phone is '+accPhone);
        System.debug('latest account number is '+ latestAcc.AccountNumber);
    }
    public static void accountSoql_3(){
        List<Account> listAcc=[select id, name, phone, accountnumber from Account ORDER BY CreatedDate DESC];
        System.debug('all accounts = '+listAcc);
        for(Account eachAccount:listAcc){
        id accid=eachAccount.Id;
        String accName=eachAccount.Name;
        String accPhone=eachAccount.Phone;
        System.debug('acc name is '+accName+', phone is '+accPhone+', id is '+accid);
        System.debug('account number is '+ eachAccount.AccountNumber);
        System.debug('--------------------------');
        }
    }
}
