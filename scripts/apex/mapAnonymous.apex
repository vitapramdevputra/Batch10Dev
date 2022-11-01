Map<string, string> mapCountryCurrency = new map<string, string>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Lira');
mapCountryCurrency.put('El Salvador', 'Bitcoin');
mapCountryCurrency.put('Canada', 'Dollar'); 
mapCountryCurrency.put('Australia', 'Dollar'); 

system.debug('map country currency ===> ' + mapCountryCurrency);

string Ind = 'India';
string IndiaCurrency = mapCountryCurrency.get(Ind); //WILL WORK.
string TurkiyeCurrency = mapCountryCurrency.get('Turkiye');
system.debug('India currency is ' + IndiaCurrency);
system.debug('Turkiye currency is ' + TurkiyeCurrency);

Set<String> allCountries = mapCountryCurrency.keySet();
system.debug('all countries ==> ' + allCountries);

//values() ==> LIST<value_datatype>
List<string> allCurrencies = mapCountryCurrency.values();
system.debug('all currencies ==> ' + allCurrencies);

Set<String> countries = mapCountryCurrency.keySet();
system.debug('all countries ==> ' + countries);
for(string eachCountry: countries){
    system.debug('each country ==> ' + eachCountry);
    //Key is eachCountry --> following this?
    string eachCurrency = mapCountryCurrency.get(eachCountry);
    system.debug('each currency ==> ' + eachCurrency);
    system.debug('--------------');
}