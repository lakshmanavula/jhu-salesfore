@isTest
public with sharing class EmployeeTest {
    public EmployeeTest() {

    }

    public static testMethod void getNetSalaryBelow5L(){
        Employee emp = new Employee(1001,'Suresh',250000);
        Decimal netSal = emp.getNetSalary();
        System.assertEquals(245000, netSal);
    }
    public static testMethod void getNetSalaryAbove5L(){
        Employee emp = new Employee(1001,'Suresh',100000);
        Decimal netSal = emp.getNetSalary();
        System.assertEquals(900000, netSal);
    }

    // This code to make 100% code coverage
    public static testMethod void incrementSalary(){
         Employee emp = new Employee(1001,'Suresh',500000);
         emp.incrementSalary(0.1);
         System.assertEquals(495000, emp.getNetSalary());
         emp.showDetails();
    }

}
