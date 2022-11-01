//normal world
//If we do not have any constructor.
//we can create new instance with --> new className();
Cat sf = new Cat(); 
sf.name = 'kitty';
sf.color = 'black';
system.debug(sf);

//constructor --> new instance, pass two strings.
Cat siCat = new cat('fluffykins', 'white');
system.debug(siCat);

Cat vk = new cat('van', 'white');
system.debug(vk);

Cat s = new cat('simba', 'brown');
system.debug(s);