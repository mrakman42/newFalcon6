
try {
    Account a =new Account();
    insert a;
}catch(DmlException dex){
    System.debug('dml went wrong'); //this is printed 
} catch (Exception ex) {
    System.debug('something went wrong!!'); //so this is not printed due to line 6
}

System.debug('APEX is simple');// this is printed 
