public class PrimitiveDataTypeDemo2 {
    public void printNewDateTime(){
       date today=date.today();
       time newTime=time.newInstance(9,8,0,0); 
       datetime dt1=datetime.newInstance(today,newTime);
       system.debug('date and time is '+ dt1);

       datetime dt2 = datetime.newInstance(2025, 1, 9);
        system.debug('dt2 is ' + dt2);
        datetime dt3 = datetime.newInstance(2022, 02, 20, 15, 15, 15);
        system.debug('dt3 is ' + dt3);


       //4,current datetime
       datetime currentDT=datetime.now();
       system.debug('current DT is '+ currentDT);

       //5. GMT time 
       datetime dt5=datetime.newInstanceGMT(1992,1,28,18,0,0);
       System.debug('dt5 is '+dt5);
       datetime dt6=datetime.newInstance(0);
       System.debug('dt6 is '+dt6);

       Long longtime = 1341828183000L;
       datetime dt4=datetime.newInstance(longtime);
       System.debug('long time is for dt4 is '+dt4);


    }

    public void printNewTime(){
        time myTime=time.newInstance(18,20,2,30);
        system.debug('my time is '+myTime);

    }

    public void printNewDate(){
        system.debug('create new date instance');
        date newDate = date.newInstance(1995,5,15);
        system.debug('the date is '+ newDate);
        Date newDate2 =Date.newInstance(2022,2,31);
        system.debug('the second date is '+ newDate2);
        date todayDate = date.today();
        system.debug('today date is '+ todayDate);




    }
    
}
