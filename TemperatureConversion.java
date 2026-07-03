/*
=====================================================
PRACTICAL: Temperature Conversion in Java
=====================================================

AIM:
- To write a Java program that converts temperature
  from Celsius to Fahrenheit and vice versa.

OBJECTIVE:
- To take temperature and choice as input.
- To convert Celsius ↔ Fahrenheit using formulas.
- To display the converted value.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner for input.
2) Display menu:
     1. Celsius to Fahrenheit
     2. Fahrenheit to Celsius
3) Read user choice.
4) If choice = 1:
       Read Celsius, convert F = (C * 9/5) + 32
   If choice = 2:
       Read Fahrenheit, convert C = (F - 32) * 5/9
5) Display result.
6) End program.

STEPS TO RUN:
- Save as: TemperatureConversion.java
- Compile: javac TemperatureConversion.java
- Run:     java TemperatureConversion

=====================================================
*/

import java.util.Scanner;

public class TemperatureConversion {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("=== Temperature Converter ===");
        System.out.println("1. Celsius to Fahrenheit");
        System.out.println("2. Fahrenheit to Celsius");
        System.out.print("Enter your choice: ");
        int choice = sc.nextInt();

        if (choice == 1) {
            System.out.print("Enter temperature in Celsius: ");
            double celsius = sc.nextDouble();
            double fahrenheit = (celsius * 9 / 5) + 32;
            System.out.println("Temperature in Fahrenheit = " + fahrenheit);
        } else if (choice == 2) {
            System.out.print("Enter temperature in Fahrenheit: ");
            double fahrenheit = sc.nextDouble();
            double celsius = (fahrenheit - 32) * 5 / 9;
            System.out.println("Temperature in Celsius = " + celsius);
        } else {
            System.out.println("Invalid choice!");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

=== Temperature Converter ===
1. Celsius to Fahrenheit
2. Fahrenheit to Celsius
Enter your choice: 1
Enter temperature in Celsius: 37
Temperature in Fahrenheit = 98.6

=== Temperature Converter ===
1. Celsius to Fahrenheit
2. Fahrenheit to Celsius
Enter your choice: 2
Enter temperature in Fahrenheit: 212
Temperature in Celsius = 100.0

=================================================

RESULT:
- Successfully created a Java program to convert temperature.
- Conversion between Celsius and Fahrenheit works correctly.
=================================================
*/
