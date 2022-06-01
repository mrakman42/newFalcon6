public class DmlDemo2 {
    public static void dmlMultipleRecordUpdate_right() {
        List<Account> listAcc=[select id, name, Description from Account ORDER BY CreatedDate desc LIMIT 150 ];

        List<Account> updateAccounts=new List<Account>();

        for (account acc : listAcc) {
            acc.Name=acc.Name+' vB';
            acc.Description='Update via bulk dml';
            updateAccounts.add(acc);

        }
        if (!updateAccounts.isEmpty()) {
            update updateAccounts;
        }
    }
}
