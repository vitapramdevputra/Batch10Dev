Candidates.companyName = 'Softinnovas';
system.debug('START candidate count = ' + Candidates.candidateCount);

Candidates c1 = new Candidates();
c1.name = 'Jerry';
c1.gender = 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
c2.name = 'Elaine';
c2.gender = 'Female';
c2.printCandidate();

Candidates c3 = new Candidates();
c3.name = 'George';
c3.gender = 'Male';
c3.printCandidate();

Candidates.companyName = 'Vandely industries';
Candidates c4 = new Candidates();
c4.name = 'Kramer';
c4.gender = 'Male';
c4.printCandidate();

Candidates c5 = new Candidates();
c5.name = 'Newman';
c5.gender = 'Male';
c5.printCandidate();

c1.printCandidate();
c2.printCandidate();
c3.printCandidate();

Candidates c6 = new Candidates();
c6.name = 'Papa';
c6.gender = 'Male';
c6.printCandidate();

system.debug('END candidate count = ' + Candidates.candidateCount);