/*
=====================================================
PRACTICAL: Net Salary with PF & Tax Deductions (Java)
=====================================================

ASSUMED FORMULAE:
- HRA = 20% of Basic
- DA  = 50% of Basic
- PF  = 12% of Basic
- Income Tax = 10% of Gross
- Gross = Basic + HRA + DA
- Net   = Gross − (PF + Income Tax)

This file restores the `Employee` helper class and adds sorting
of employees by net salary (descending) before printing the report.
*/

import java.util.Arrays;
import java.util.Comparator;
import java.util.Scanner;

class Employee {
    int id;
    String name;
    double basic, hra, da, gross, pf, tax, net;

    void input(Scanner sc) {
        id = readInt(sc, "Enter Employee ID: ");
        System.out.print("Enter Employee Name: ");
        name = sc.nextLine();
        basic = readDouble(sc, "Enter Basic Salary: ");
    }

    void calculate() {
        hra = 0.20 * basic;
        da = 0.50 * basic;
        gross = basic + hra + da;
        pf = 0.12 * basic;
        tax = 0.10 * gross;
        net = gross - (pf + tax);
    }

    void printRow() {
        System.out.printf("%-6d %-14s %10.2f %10.2f %10.2f %10.2f %10.2f %10.2f %10.2f%n",
                id, name, basic, hra, da, gross, pf, tax, net);
    }

    private static int readInt(Scanner sc, String prompt) {
        while (true) {
            System.out.print(prompt);
            String line = sc.nextLine();
            if (line == null) {
                throw new IllegalStateException("No input available.");
            }
            try {
                return Integer.parseInt(line.trim());
            } catch (NumberFormatException e) {
                System.out.println("Invalid integer. Please enter a valid number.");
            }
        }
    }

    private static double readDouble(Scanner sc, String prompt) {
        while (true) {
            System.out.print(prompt);
            String line = sc.nextLine();
            if (line == null) {
                throw new IllegalStateException("No input available.");
            }
            try {
                return Double.parseDouble(line.trim());
            } catch (NumberFormatException e) {
                System.out.println("Invalid number. Please enter a valid amount.");
            }
        }
    }
}

public class NetSalaryArray {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = readPositiveInt(sc, "Enter number of employees: ");

        Employee[] emp = new Employee[n];
        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter details for Employee " + (i + 1));
            emp[i] = new Employee();
            emp[i].input(sc);
            emp[i].calculate();
        }

        // Sort employees by net salary (descending)
        Arrays.sort(emp, Comparator.comparingDouble((Employee e) -> e.net).reversed());

        double tBasic = 0, tHra = 0, tDa = 0, tGross = 0, tPf = 0, tTax = 0, tNet = 0;

        System.out.println("\n==================== Net Salary Report (sorted by Net desc) ====================");
        System.out.printf("%-6s %-14s %10s %10s %10s %10s %10s %10s %10s%n",
                "ID", "Name", "Basic", "HRA", "DA", "Gross", "PF", "Tax", "Net");
        System.out.println("-----------------------------------------------------------");
        for (Employee e : emp) {
            e.printRow();
            tBasic += e.basic;
            tHra += e.hra;
            tDa += e.da;
            tGross += e.gross;
            tPf += e.pf;
            tTax += e.tax;
            tNet += e.net;
        }
        System.out.println("-----------------------------------------------------------");
        System.out.printf("%-20s %10.2f %10.2f %10.2f %10.2f %10.2f %10.2f %10.2f%n",
                "TOTAL:", tBasic, tHra, tDa, tGross, tPf, tTax, tNet);

        sc.close();
    }

    private static int readPositiveInt(Scanner sc, String prompt) {
        while (true) {
            System.out.print(prompt);
            String line = sc.nextLine();
            if (line == null) {
                throw new IllegalStateException("No input available.");
            }
            try {
                int value = Integer.parseInt(line.trim());
                if (value > 0) {
                    return value;
                }
                System.out.println("Please enter a positive integer.");
            } catch (NumberFormatException e) {
                System.out.println("Invalid integer. Please enter a valid number.");
            }
        }
    }
}
