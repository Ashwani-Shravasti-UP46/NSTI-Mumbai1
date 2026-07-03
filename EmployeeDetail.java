class Employee {
private String name;
private int id;
private String department;
private double salary;
// Constructor
public Employee(String name, int id, String department, double salary) {
this.name = name;
this.id = id;
this.department = department;
this.salary = salary;
}
// Method to display employee details
public void displayDetails() {
System.out.println("Employee Details:");
System.out.println("Name: " + name);
System.out.println("ID: " + id);
System.out.println("Department: " + department);
System.out.println("Salary: $" + salary);
}
}
public class EmployeeDetail{
public static void main(String[] args) {
// Creating an Employee object
Employee emp1 = new Employee("Sreenath", 101, "IT", 75000);
// Displaying the employee details
emp1.displayDetails();
}
} 