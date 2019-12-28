public with sharing class Employee {
  
    Integer empno;
    String ename;
    Decimal salary;
    Decimal taxAmount;

    public Employee(Integer empno, String ename, Decimal salary) {
        this.empno = empno;
        this.ename = ename;
        this.salary = salary;
        calTax();
    }

    private void calTax(){
        if(salary > 500000){
            taxAmount = salary * 0.1;
        }else{
            taxAmount = salary * 0.02;
        }
    }
    public Decimal getNetSalary(){
        return salary - taxAmount;
    }
    public void incrementSalary(Decimal percentage){
        salary = salary + salary * percentage;
        calTax();
    }
    public void showDetails(){
        System.debug('Empno :'+empno+ ' Ename :'+ename+' Salary :'+salary+ ' Taxmount:'+taxAmount);
    }
    
}
