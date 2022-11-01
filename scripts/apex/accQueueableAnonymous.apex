List<account> accouts = [select id, name from account];
AccountsQueueableExample aq = new AccountsQueueableExample(accouts);//is this valid? will this work?
id jobId = system.enqueueJob(aq);
