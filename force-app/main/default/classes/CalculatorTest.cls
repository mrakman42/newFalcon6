@isTest
public class CalculatorTest {
    @isTest
    private static void testMessage(){
        Calculator.welcomeMessage();
        Calculator.printNewMessage('welcome to testing class with @isTest');
        Calculator.printNewMessage2('message', date.today());

    }
    @isTest
    private static void addTest(){
        Integer i=10;
        Integer j=15;
        Integer calAdd= Calculator.add(i, j);
        System.assertEquals(25, calAdd);
        
    }
    @isTest
    private static void addTest2() {
        integer calcAdd=Calculator.add(10, 15, 20);
        System.assertEquals(45, calcAdd);
    }
    @isTest
    public static void addTest3() {
        List<Integer> listInt=new List<Integer>{10,15,10,15};
        Integer calAdd=Calculator.add(listInt);
        System.assertEquals(50, calAdd);
    }

}
