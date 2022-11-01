public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
    public static integer candidateCount = 0;
    
    public Candidates(){
        system.debug('constructor called.');
        candidateCount++;
        //you can write ANY logic here.
        //whatever we want to do when a new instance created.
    }

    public void printCandidate() {
        system.debug('candidate name is ' + name);
        system.debug('gender is ' + gender);
        system.debug('company name is ' + companyName);
        system.debug('====END====');
    }
    public static void printCandidateINfo() {
        system.debug('company name is ' + companyName);
    }
}
