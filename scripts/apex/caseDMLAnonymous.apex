List<Case> listCase = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.Subject = 'There is a bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
}
insert listCase;



List<case> listCase =  new list<case>();
for(case c: [select id, status from case where status='New']){
    c.Status = 'Working';
    listCase.add(c);
}
update listCase;