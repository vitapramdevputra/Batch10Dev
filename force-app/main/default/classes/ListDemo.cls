public class ListDemo {
    public static string candidateList(integer i) {
        //className instanceName = new className();
        List<string> listCandidate = new list<string>();
        listCandidate.add('Marc');
        listCandidate.add('Elon');
        listCandidate.add('Bill');
        listCandidate.add('Marc');
        system.debug('listCandidates => ' + listCandidate);

        string returnStr = '';
        if (i >=0 && i < listCandidate.size()) {
            returnStr = listCandidate[i];
        } else {
            returnStr = 'No Values FOUND.';
        }
        return returnStr;
    }

    public static void randomIntegerList() {
        List<integer> listInteger = new list<integer>();
        listInteger.add(15);//0
        listInteger.add(21);//1
        listInteger.add(10);//2
        listInteger.add(15);//3
        listInteger.add(15);//4
        system.debug('list integer ===> ' + listInteger);

        integer index3value = listInteger.get(3);
        system.debug('index 3 value is ===>' + index3value);

        integer index2value = listInteger[2];
        system.debug('index 2 value is ==> ' + index2value);
    }

    public static void allCats() {
        cat siCat = new cat('fluffykins', 'white');
        cat vk = new cat('van', 'white');
        cat s = new cat('simba', 'brown');

        List<cat> cats = new list<cat>();
        cats.add(siCat);
        cats.add(vk);
        cats.add(s);
        cats.add(siCat);
        cats.add(vk);

        system.debug('all cats ===> ' + cats);
        if (!cats.isEmpty()) {
            cat catAt3 = cats[3];
            system.debug('cat at 3 is ' + catAt3);
        }
    }
}
