Map<String,String> mapCntCurrency =new Map<String,String>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
System.debug('map of country vs currency '+mapCntCurrency);

String indiaCurrency=mapCntCurrency.get('India');
System.debug(indiaCurrency);
String country = 'Turkey';
String turkeyCurrency=mapCntCurrency.get(country);
System.debug('turkey\'s currency is '+turkeyCurrency);

List<String> countryList = mapCntCurrency.values();
System.debug('values '+countryList);

Set<String> countrySet = mapCntCurrency.keySet();
System.debug('sets '+countrySet);
system.debug('countries in map: ' + countrySet);

for(string eachKey: countrySet){
    string eachCurrency = mapCntCurrency.get(eachKey);
    string printString = 'country is ' + eachKey + ', its currency is ' + eachCurrency;
    system.debug(printString);
}
