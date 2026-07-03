
// =====================================================
// PRACTICAL: Multiple Employees Salary (Array of Objects)
// =====================================================
 
import java.util.Scanner;

class Employee {
    int empId;
    String name;
    double basic, hra, da, gross;

    void input(Scanner sc) {
        System.out.print("Enter Employee ID: ");
        empId = sc.nextInt();
        sc.nextLine();
        System.out.print("Enter Employee Name: ");
        name = sc.nextLine();
        System.out.print("Enter Basic Salary: ");
        basic = sc.nextDouble();
    }

    void calculate() {
        hra = 0.20 * basic;
        da  = 0.50 * basic;
        gross = basic + hra + da;
    }

    void printRow() {
        System.out.printf("%-8d %-15s %10.2f %10.2f %10.2f %12.2f%n",
                empId, name, basic, hra, da, gross);
    }
}

public class EmployeeSalaryArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of employees: ");
        int n = sc.nextInt();

        Employee[] arr = new Employee[n];
        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter details for Employee " + (i + 1));
            arr[i] = new Employee();
            arr[i].input(sc);
            arr[i].calculate();
        }

        double totalBasic = 0, totalHra = 0, totalDa = 0, totalGross = 0;

        System.out.println("\n================ Employee Salary Report ================");
        System.out.printf("%-8s %-15s %10s %10s %10s %12s%n",
                "EmpID", "Name", "Basic", "HRA", "DA", "Gross");
        System.out.println("--------------------------------------------------------");
        for (Employee e : arr) {
            e.printRow();
            totalBasic += e.basic;
            totalHra   += e.hra;
            totalDa    += e.da;
            totalGross += e.gross;
        }
        System.out.println("--------------------------------------------------------");
        System.out.printf("%-23s %10.2f %10.2f %10.2f %12.2f%n",
                "TOTAL:", totalBasic, totalHra, totalDa, totalGross);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter number of employees: 2

Enter details for Employee 1
Enter Employee ID: 101
Enter Employee Name: Sunil
Enter Basic Salary: 20000

Enter details for Employee 2
Enter Employee ID: 102
Enter Employee Name: Komal
Enter Basic Salary: 30000

================ Employee Salary Report ================
EmpID    Name                 Basic        HRA         DA        Gross
--------------------------------------------------------
101      Sunil             20000.00    4000.00   10000.00     34000.00
102      Komal             30000.00    6000.00   15000.00     51000.00
--------------------------------------------------------
TOTAL:                     50000.00   10000.00   25000.00     85000.00

=================================================

RESULT:
- Successfully implemented multiple-employee salary calculation using array of objects.
- Program computes HRA, DA, Gross for each employee and shows grand totals.
=================================================
*/
