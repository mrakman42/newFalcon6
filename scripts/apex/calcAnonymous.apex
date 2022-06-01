system.debug(Calculator.add(5,10));
// Calculator calc= new Calculator();
// //calc.welcomeMessage();
// calc.printNewMessage('this is new calculator');
// string msg='try';
// calc.printNewMessage(msg); //this also works 
// calc.printNewMessage2('this is a message on ',date.today());
// integer sum1=calc.add(10,15);
// System.debug('sum1 = '+sum1);
// integer sum2=calc.add(100,150);
// System.debug('sum2= '+sum2);
// integer finalSum=calc.add(sum1,sum2);
// System.debug('final sum is '+finalSum);
// integer sum22=calc.add(23,24,25);
// System.debug('sum22 is '+sum22);
List<Integer> listInteger=new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        Integer sumList=Calculator.add(listInteger);
        System.debug('sum is '+sumList);
        