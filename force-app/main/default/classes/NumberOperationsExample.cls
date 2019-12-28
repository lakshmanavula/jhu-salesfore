public with sharing class NumberOperationsExample {
   
    public static Integer biggest(Integer num1, Integer num2, Integer num3){
        Integer big ;
        if(num1> num2 && num1 > num3){
            big = num1;
        }else if(num2 > num3){
            big = num2;
        }else{
            big = num3;
        }
        return big;
    }
    public static Integer sumOfNumbers(List<Integer> nums){
        Integer res = 0;
        for(Integer num:nums){
                res += num;
        }
        return res;
    }

    public static Integer reverseOfNumber(Integer num){
        Integer rev = 0;
        while(num != 0 ){
            rev = rev * 10 + Math.mod(num, 10);
            num = num / 10;
        }
        return rev;
    }

    public static Boolean isPalindrome(Integer num){
        return reverseOfNumber(num) == num;
    }


    public static Integer factorial(Integer num){
        Integer fact = 1;
        for(Integer i = 2; i<= num ;i++){
            fact *= num;
        }
        return fact;
    }



}
