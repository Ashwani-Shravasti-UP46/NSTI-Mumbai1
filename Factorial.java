/*
=====================================================
PRACTICAL: Factorial of a Number in Java
=====================================================

AIM:
- To write a Java program that finds factorial of a number.

OBJECTIVE:
- To use loop for calculating factorial.
- To take user input and compute factorial.
- To display the result.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read an integer number n from user.
3) Initialize fact = 1.
4) Loop from i = 1 to n:
      fact = fact * i
5) Print factorial value.
6) End program.

STEPS TO RUN:
- Save as: Factorial.java
- Compile: javac Factorial.java
- Run:     java Factorial

=====================================================
*/

import java.util.Scanner;

public class Factorial {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int n = sc.nextInt();

        long fact = 1;
        for (int i = 1; i <= n; i++) {
            fact *= i;
        }

        System.out.println("Factorial of " + n + " = " + fact);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter a number: 5
Factorial of 5 = 120

Enter a number: 7
Factorial of 7 = 5040

=================================================

RESULT:
- Successfully implemented factorial program in Java.
- Program reads an integer and calculates its factorial using loop.
=================================================
*/
