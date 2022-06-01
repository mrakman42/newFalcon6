public class LoopDemo {
    public void print_int_while() {
        integer count =1;
        while(count<=25){
            
            System.debug(count);
            count++;

        }

    }
    public void print_N_numbers(integer n){
        for (Integer i = 0; i < n; i++) {
            System.debug(i);
            
        }

    }
    public void print_N_numbers2(integer n){
        string s ='';
        for (Integer i = 0; i < n; i++) {
            s+=string.valueOf(i)+', ';
            
        }
            System.debug(s);
    }
    public void print_sum_N_numbers(integer n){
        integer sum=0;
        for (Integer i = 0; i < n; i++) {
            sum+=i;
            
        }
        System.debug('sum is '+sum);

    }
    public void print_N_Odd_numbers(integer startInt, integer endInt){
        for (Integer i = startInt; i < endInt; i++) {
            integer modI=math.mod(i,2);
            if (modI==1) System.debug(i);
                
        }
    }

}
