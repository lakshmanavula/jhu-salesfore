@isTest
public with sharing class NumberOpertionsTest {
    
    
    public NumberOpertionsTest() {

    }

    static testMethod void biggestPNumbersTest(){
        System.assertEquals(45,NumberOperationsExample.biggest(10,45, 23));
    }
    
    static testMethod void biggestNNumbersTest(){
        System.assertEquals(-10,NumberOperationsExample.biggest(-10,-45, -23));
    }
    
    static testMethod void biggestNandPNumbersTest(){
        System.assertEquals(0,NumberOperationsExample.biggest(-10,0, -23));
    }

    
    static testMethod void sumOfNumbersTest(){
        List<Integer> l = new List<Integer>{1,2,4,-6};
        System.assertEquals(1, NumberOperationsExample.sumOfNumbers(l));
    }

    static testMethod void factorialTest(){
        
        System.assertEquals(120, NumberOperationsExample.factorial(5));
    }
    static testMethod void reverseTest(){
         System.assertEquals(1213, NumberOperationsExample.reverseOfNumber(3121));
    }

    static testMethod void palindromeTest(){
         System.assertEquals(true, NumberOperationsExample.isPalindrome(121));
    }

}
