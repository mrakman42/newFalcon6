public class StringDemoClass {
    public void stringMethod1(){

        string sessionDescription ='learning string methods in apex language.';
        Integer lengthOfStr= sessionDescription.length(); 
        system.debug('length is '+ lengthOfStr);

        system.debug(sessionDescription.toUpperCase());
        system.debug('contain = '+sessionDescription.contains('in'));




    }
}
