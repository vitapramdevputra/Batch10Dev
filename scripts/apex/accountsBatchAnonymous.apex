AccountsBatch ab = new AccountsBatch();
id batchId = database.executeBatch(ab, 15);
//using this batchId or job id we can get status(queued, In Progress, completed, failed) 
//of batch by doing soql query to Apex Jobs.
system.debug('batch id ==> ' + batchId);