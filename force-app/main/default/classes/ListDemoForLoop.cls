public class ListDemoForLoop {
   public static void iterateIntegerList() {
        List<integer> listInteger = new list<integer>();
        listInteger.add(15);//0
        listInteger.add(21);//1
        listInteger.add(10);//2
        listInteger.add(15);//3
        listInteger.add(15);//4

        for (integer eachInteger : listInteger) {
            system.debug(eachInteger);
        }
   }

   public static integer add(list<integer> intList) {
       integer returnSUM = 0;
        //list -> 10, 15, 21, 10
        for (Integer eachInt : intList) {
            //r = 0;        10;     25;
            //e = 10;       15;     21;
            //r = r + e;
            system.debug('BEFORE r = ' + returnSUM);
            system.debug('eachInt = ' + eachInt);
            returnSUM = returnSUM + eachInt;
            system.debug('AFTER adding r=' + returnSUM);
            //r = 0 + 10; ==> r = 10;
                // 10+15  ==> r = 25;
        }
       return returnSUM;
   }
}
