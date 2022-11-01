public class PrimitiveDataTypeDemo {
   public void printBasicDataType(){
       system.debug('inside print basic datatype method.');

       string batchName = 'Batch 10';
       integer totalCandidates = 85;
       boolean isAdminCompleted = true;

       system.debug(batchName);
       system.debug(totalCandidates);
       system.debug(isAdminCompleted);

       string batchDescription = batchName + ' is amazingg, really.';
       system.debug(batchDescription);

       Decimal decValue = 777888;
       system.debug('dec value --> ' + decValue);

       Long longValue = 78987L;
       system.debug('long value is --> ' + longValue);

       object obj = 'This is a string object';
       system.debug('obj is --> ' + obj);

       object obj2 = 9874.5;
       system.debug('obj2 is --> ' + obj2);

       Id id1 = '0015g00000rtcluAAA';
       system.debug('id1 is of ID datatype and its value is...' + id1);

   }
}
