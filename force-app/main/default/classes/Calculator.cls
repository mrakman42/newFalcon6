public class Calculator {
    public static void welcomeMessage() {
          //System.debug(abc);
        System.debug('welcome to apex calc.');

    }
    public static void printNewMessage(string msg){
        System.debug(msg);

    }
    public static void printNewMessage2(string msg, date dt){
        System.debug(msg);
        System.debug(dt);
        //System.debug(ac);

    }
    public static integer add (integer a,integer b){
        integer sum = a+b;
        //System.debug(sum);
        return sum;

    }

    public static integer add(integer a,integer b,integer c){
        return a+b+c;
    }
    public static integer add(list<Integer> intList) {
        Integer returnInt=0;
        for (integer eachInt : intList) {
            System.debug('each int is '+eachInt);
            returnInt+=eachInt;
            System.debug('return int is '+returnInt);
        }
        return returnInt;
    }


}
