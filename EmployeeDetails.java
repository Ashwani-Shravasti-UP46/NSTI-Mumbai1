
class Employee {

    private String name;
    private int id;
    private String department;
    private double salary;

    public Employee(String name, int id, String department, double salary) {
        this.name = name;
        this.id = id;
        this.department = department;
        this.salary = salary;
    }

    public void displayDetails() {
        System.out.println("========================================");
        System.out.println("Employee Details:");
        System.out.println("Name: " + name);
        System.out.println("ID: " + id);
        System.out.println("Department: " + department);
        System.out.println("Salary: $" + salary);
        System.out.println("========================================");
    }

    public void raiseSalary(double percentage) {
        salary += salary * (percentage / 100);
        System.out.println("Salary raised by " + percentage + "%. New Salary: $" + salary);
    }

    public String getDepartment() {
        return department;
    }

    public int getId() {
        return id;
    }
}

public class EmployeeDetails {

    public static void main(String[] args) {
        System.out.println("===== EMPLOYEE MANAGEMENT SYSTEM =====\n");

        // Creating Employee objects
        Employee emp1 = new Employee("Sreenath", 101, "IT", 75000);
        Employee emp2 = new Employee("Ravi", 102, "HR", 65000);
        Employee emp3 = new Employee("Priya", 103, "Finance", 70000);
        Employee emp4 = new Employee("Arjun", 104, "IT", 72000);

        // Store employees in array
        Employee[] employees = {emp1, emp2, emp3, emp4};

        // Display all employee details
        System.out.println("ALL EMPLOYEES:\n");
        for (Employee emp : employees) {
            emp.displayDetails();
        }

        // Display IT department employees
        System.out.println("\nIT DEPARTMENT EMPLOYEES:\n");
        for (Employee emp : employees) {
            if (emp.getDepartment().equals("IT")) {
                emp.displayDetails();
            }
        }

        // Raise salary for emp1
        System.out.println("\nRaising salary for Employee ID " + emp1.getId() + ":\n");
        emp1.raiseSalary(10);

        System.out.println("\n===== END OF PROGRAM =====");
    }
}
