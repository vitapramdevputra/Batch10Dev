public class Calculator {
    public void printNewMessage(string msg){
        //this is INSIDE of the method.
        //we use msg (variable name of parameter HERE)
        system.debug(msg);
    }
    public string printAndReturnMessage(string msg){
        string returnStr = msg + '...OK cool';
        return returnStr;
    }

    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }

    public integer add(integer i, integer j, integer k){
        system.debug('inside add method with 3 params');
        integer sum = i+j+k;
        return sum;
    }
}
