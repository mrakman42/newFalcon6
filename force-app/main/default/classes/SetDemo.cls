public class SetDemo {
    public static void citySet() {
        Set<String> cities = new Set<String> ();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        System.debug('set of cities '+cities);

    }
    public static void randomInteger() {
        Set<integer> setInteger = new Set<integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(10);
        setInteger.add(15);
        System.debug('set of random integers '+ setInteger);

    }
    public static set<Integer> setFromList(List<integer> intList) {
        Set<Integer> intSet= new Set<Integer>();
        intSet.addAll(intList);
        return intSet;

    }
    public static set<string> capitalizeSet(set<String>setString) {

        Set<String> upperCaseSet=new Set<String>();
        for (string eachString : setString) {
            String tempStr=eachString.toUpperCase();
            upperCaseSet.add(tempStr);
        }


        return upperCaseSet;
        
    }
}
