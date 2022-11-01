public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string method in apex language';

        //1. length
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is ..... ' + lengthOfStr);

        //2. capitalize
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('capital string is....' + sessionDescriptionInCaps);

        //3. contains apex
        boolean containsApex = sessionDescription.CONTAINS('apex');
        system.debug('contains apex????????????????????? ' + containsApex);

        //3.x contains apex
        boolean containsApex2 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('contains APEX?????? ' + containsApex2);

        //3.a contains salesforce
        boolean containsSalesforce = sessionDescription.containsIgnoreCase('salesforce');
        system.debug('contains Salesforce?????? ' + containsSalesforce);
    }
}
