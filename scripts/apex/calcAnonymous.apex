Calculator c = new Calculator();
integer a = c.add(8, 7, 6);
system.debug('8+7+6 => ' + a)

c.add(10, 5); //this also works, right?

integer x = c.add(10, 5);
system.debug('sum of 10 and 5 is ' + x);
integer y = c.add(9874,6541321);
system.debug(' y is ' + y);



string result = c.printAndReturnMessage('Print this ASAP');
system.debug(result);







c.printNewMessage('This is new age calc.');

string msg = 'Print this now.';
c.printNewMessage(msg);

string msg99 = 'Now this.';
c.printNewMessage(msg99);