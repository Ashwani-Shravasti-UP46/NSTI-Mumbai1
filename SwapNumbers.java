/*
=====================================================
PRACTICAL: Swap Two Numbers in Java
=====================================================

AIM:
- To write a Java program that swaps two numbers.

OBJECTIVE:
- To demonstrate swapping of two variables.
- To implement swapping using a temporary variable.
- To also show swapping without using a temporary variable.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read two integers a, b from user.
3) Display original values.
4) Swap using a temporary variable:
       temp = a
       a = b
       b = temp
5) Display swapped values.
6) Reset to original values.
7) Swap without using a temporary variable:
       a = a + b
       b = a - b
       a = a - b
8) Display swapped values.
9) End program.

STEPS TO RUN:
- Save as: SwapNumbers.java
- Compile: javac SwapNumbers.java
- Run:     java SwapNumbers

=====================================================
*/

import java.util.Scanner;

public class SwapNumbers {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter first number: ");
        int a = sc.nextInt();

        System.out.print("Enter second number: ");
        int b = sc.nextInt();

        System.out.println("Before Swapping: a = " + a + ", b = " + b);

        // Swapping using a temporary variable
        int temp = a;
        a = b;
        b = temp;
        System.out.println("After Swapping (using temp): a = " + a + ", b = " + b);

        // Swapping without a temporary variable
        a = a + b;
        b = a - b;
        a = a - b;
        System.out.println("After Swapping (without temp): a = " + a + ", b = " + b);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter first number: 5
Enter second number: 10
Before Swapping: a = 5, b = 10
After Swapping (using temp): a = 10, b = 5
After Swapping (without temp): a = 5, b = 10

=================================================

RESULT:
- Successfully implemented program to swap two numbers.
- Demonstrated both methods: with and without a temporary variable.
=================================================
*/
