public class Car {
    public string carColor='';
    public string CarName='';
    private integer maxSpeedKMperHour=150;


    public void switchOn() {
        System.debug('starting car');

    }
    public void drive(){
        System.debug('driving '+CarName);
    }
    public void driveAtMaxSpeed(){
        string drivingDescription ='driving '+ CarName+' at '+ maxSpeedKMperHour+' kmh';
        System.debug(drivingDescription);
    }
    if
}
