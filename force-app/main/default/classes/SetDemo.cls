public class SetDemo {
    public static void citySet() {
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        system.debug('cities set ' + cities);
    }

    public static void randomIntegerSet() {
        set<integer> randomIntegers = new set<integer>();
        randomIntegers.add(10);
        randomIntegers.add(21);
        randomIntegers.add(15);
        randomIntegers.add(15);
        randomIntegers.add(15);
        randomIntegers.add(15);
        randomIntegers.add(15);
        system.debug('random integers are ' + randomIntegers);
    }

    public static set<integer> setFromList(List<integer> l1) {
        set<integer> s1 = new set<integer>();
        //add all the elements from the l1 to a NEW SET.
        //RETURN that NEW SET<INTEGER>.
        s1.addAll(l1);
        return s1;
    }

    public static void capitalizeAllSet() {
        //create a SET.
            //convert EACH element to UPPERCASE
            //and add it in a NEW SET.
        //a new set.
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        system.debug('cities set ' + cities);

        set<string> citiesInCaps = new set<string>();
        for (string eachCity : cities) {
            string tempStr = eachCity.toUpperCase();
            citiesInCaps.add(tempStr);
        }
        system.debug('cities in capital ' + citiesInCaps);
    }
}
