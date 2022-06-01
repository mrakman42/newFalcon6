Map<string,Country_Code__c> asd=Country_Code__c.getAll();
System.debug(asd);
for(String eachCountry : asd.keySet()){
    system.debug('country = '+eachCountry +' , code = '+asd.get(eachCountry).Country_Code__c);
}