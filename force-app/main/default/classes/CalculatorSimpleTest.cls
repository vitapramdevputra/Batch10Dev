@isTest
public class CalculatorSimpleTest {
    @isTest
   private static void testAdd1() {
       //we can call other methods, which accepts params.
       integer sum = CalculatorSimple.add(10,15);
       integer expectedSum = 25;
       system.assertEquals(expectedSum, sum);
   }
   @isTest
   private static void testAdd2() {
       //we can call other methods, which accepts params.
       integer sum = CalculatorSimple.add(10,15,10);
       integer expectedSum = 35;
       system.assertEquals(expectedSum, sum);
   }
}
