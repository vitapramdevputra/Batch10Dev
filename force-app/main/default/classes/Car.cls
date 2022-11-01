public class Car { //class is similar custom object
    //this is class body
    
    public string carColor = ''; //class variables are like custom fields
    public string carName = '';

    integer maxSpeedKmPerHr = 150;
    
    //method name = switchOn
    public void switchOn(){
        //my functionality will come here.
        system.debug('Starting the CAR NOW.');
    }

    public void drive(){
        switchOn();
        system.debug('driving ' + carName);
      
    }
    public void drivingAtMaxSpeed(){
        drive();
        string drivingDescription = 'driving ' + carName + ' at ' + maxSpeedKmPerHr + 'km/hr';
        system.debug(drivingDescription);
    }

}


//this is outside of class.
