//How to fetch records from Custom Settings?
//1. SOQL.
//2. use getAll() and getInstance() methods.

//Map<id, account> --> 
//NAME --> Country_code__c record
Map<string, Country_code__c> allCountryCode = Country_code__c.getAll();
system.debug(allCountryCode);

for (string eachCountry : allCountryCode.keySet()) {
    Country_code__c eachCC = allCountryCode.get(eachCountry);
    system.debug(eachCountry + ' iso code is... ' + eachCC.iso_code__c);
}

//account record --> billing Country -> United States.
string c1 = 'United States';
//getInstance(NAME)
Country_code__c c1code = Country_code__c.getInstance(c1); //Account newRecord = Trigger.newMap.get(id)
string isoCodeC1 = c1code.iso_code__c; //newRecord.name
system.debug(c1 + ' isoCODE is ' + isoCodeC1);

string c2 = 'Canada';
system.debug(c2 + 'iso Code is ' + Country_code__c.getInstance(c2).iso_code__c);