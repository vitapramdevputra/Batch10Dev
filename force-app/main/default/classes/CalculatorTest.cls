@isTest
public class CalculatorTest {
    @isTest
    private static void testPrintMethod() {
        Calculator calc = new Calculator();
        calc.printNewMessage('calling from test method. so chill.');
        calc.printAndReturnMessage('calling from test method, again. so chill.');
    }
}
