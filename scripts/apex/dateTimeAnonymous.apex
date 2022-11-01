DatetimeMethodsDemo dtm = new DatetimeMethodsDemo();
dtm.printOfferEndDateTime();


dtm.printSubscriptionEndDate();
dtm.calculateAgeInMonths();
dtm.calculateAgeInDays();



datetime birthDate = datetime.newInstance(1990, 10, 9, 7, 30, 00);
long longBirthDate = birthDate.getTime();
system.debug('birthday in milliseconds from 1970 Jan 1 0000 GMT ===> ' + longBirthDate);