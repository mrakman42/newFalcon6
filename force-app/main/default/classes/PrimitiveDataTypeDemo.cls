public class PrimitiveDataTypeDemo {
   public void printBasicDataType(){
       string batchName = 'Falcons 6';
       INTEGER totalCandidates = 120;
       Boolean isAdminCompleted = true;

       system.debug('batch name is ' + batchName);
       system.debug('total # of candidates: ' + totalCandidates);
       system.debug('admin completed? ' +isAdminCompleted);

       Decimal decValue = 27.01;
       system.debug('decimal ' + decValue);

       Long longValue = 21849950239L;
       system.debug('long '+ longValue);


       Object obj ='This is string';
       object obj2= 10;
       system.debug('object 1 : '+ obj);
       system.debug('object 2 : '+ obj2);

       Id id1= '0015j00000ccro0AAA';
       system.debug('id '+id1);



   }
}