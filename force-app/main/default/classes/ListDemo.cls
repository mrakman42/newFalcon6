public class ListDemo {
    public static String CandidatesList(integer i) {
        List <String> listCandidates = new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('elon');
        listCandidates.add('bill');
        listCandidates.add('marc');
        System.debug('candidates are '+listCandidates);
        String returnString='';
        if (i>=0 && i<listCandidates.size()) {
            returnString=listCandidates[i];
        } else {
            returnString='No Value Found';
        }
        return returnString;
        //Integer a =listCandidates.indexOf('Marc');
       // System.debug(a );
       //String index3Value =listCandidates.get(3);
      // System.debug('index 3 value '+index3Value);

    }
    public static void randomIntegerList(){
        List<Integer> listInteger=new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        System.debug('list of random numbers '+listInteger);
       // System.debug( listInteger.indexOf(10));
       Integer index3Value =listInteger.get(3);
       //get.3 is same as [3] 
       Integer index3Value2=listInteger[3];
       System.debug('index 3 value '+index3Value);
       System.debug('index 3 value without get is '+index3Value2);

        
    }
    public static void allCats(){
        cat falconscat=new cat('fluffy','brown');
        cat ibrahimsCat=new Cat('simba','white');
        List<cat> cats=new List<cat>();
        cats.add(falconscat);
        cats.add(ibrahimsCat);
        System.debug('all cats are '+cats);

    }
    public static void allCars() {
        car lm=new car();
        lm.carColor='red';
        car bm=new car();
        bm.carColor='gray';
        List<car> cars=new List<Car>();
        cars.add(lm);
        cars.add(bm);
        System.debug('all cars are '+cars);

    }
    public static void iterateIntegerList() {
        List<Integer> listInteger=new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }
    }
}
