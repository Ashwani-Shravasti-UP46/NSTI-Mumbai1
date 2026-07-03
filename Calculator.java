/*
=====================================================
PRACTICAL: Simple Calculator using Java
=====================================================

AIM:
- To create a calculator program in Java that performs
  basic arithmetic operations using user input.

OBJECTIVE:
- To use switch-case for menu-driven calculator.
- To perform addition, subtraction, multiplication, division.
- To take input from user at runtime.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class for input.
2) Display menu for arithmetic operations.
3) Read user’s choice.
4) Take two numbers as input.
5) Use switch-case to perform selected operation.
6) Display the result.
7) Repeat until user exits.

STEPS TO RUN:
- Save as: Calculator.java
- Compile: javac Calculator.java
- Run:     java Calculator

=====================================================
*/

import java.util.Scanner;

public class Calculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean again = true;

        while (again) {
            System.out.println("\n=== Simple Calculator ===");
            System.out.println("1. Addition");
            System.out.println("2. Subtraction");
            System.out.println("3. Multiplication");
            System.out.println("4. Division");
            System.out.println("5. Exit");
            System.out.print("Enter your choice: ");
            int choice = sc.nextInt();

            if (choice == 5) {
                System.out.println("Exiting... Thank you!");
                break;
            }

            System.out.print("Enter first number: ");
            double num1 = sc.nextDouble();
            System.out.print("Enter second number: ");
            double num2 = sc.nextDouble();

            double result = 0;
            boolean valid = true;

            switch (choice) {
                case 1: result = num1 + num2; break;
                case 2: result = num1 - num2; break;
                case 3: result = num1 * num2; break;
                case 4: 
                    if (num2 != 0) {
                        result = num1 / num2;
                    } else {
                        System.out.println("Error: Division by zero not allowed.");
                        valid = false;
                    }
                    break;
                default:
                    System.out.println("Invalid choice!");
                    valid = false;
            }

            if (valid) {
                System.out.println("Result = " + result);
            }

            System.out.print("Do you want to continue? (y/n): ");
            String ans = sc.next();
            if (!ans.equalsIgnoreCase("y")) {
                again = false;
            }
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

=== Simple Calculator ===
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit
Enter your choice: 1
Enter first number: 10
Enter second number: 20
Result = 30.0
Do you want to continue? (y/n): y

=== Simple Calculator ===
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit
Enter your choice: 4
Enter first number: 50
Enter second number: 5
Result = 10.0
Do you want to continue? (y/n): n

Exiting... Thank you!

=================================================

RESULT:
- Successfully created a calculator in Java using switch-case.
- Program takes user input, performs arithmetic operations,
  and displays result.
=================================================
*/
