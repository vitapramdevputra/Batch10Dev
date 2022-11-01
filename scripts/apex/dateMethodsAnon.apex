DateMethodClass dm = new DateMethodClass();
Date someDate = date.newInstance(2005, 01, 01);

boolean leapCheck1 = dm.leapYearCheck(someDate);
system.debug('2005-01-01 falls in leap year? ' + leapCheck1);

Date someDate2 = date.newInstance(2800, 11, 01);
boolean leapCheck2 = dm.leapYearCheck(someDate2);
system.debug('2008-11-01 falls in leap year? ' + leapCheck2);