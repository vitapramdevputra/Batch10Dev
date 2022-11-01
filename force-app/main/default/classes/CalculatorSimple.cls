public class CalculatorSimple {
    public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }

    public static integer add(integer i, integer j, integer k){
        system.debug('inside add method with 3 params');
        integer sum = i+j+k;
        return sum;
    }
}
