/*
=====================================================
PRACTICAL: Check Positive or Negative Number in Java
=====================================================

AIM:
- To write a Java program that checks whether a number is positive, negative, or zero.

OBJECTIVE:
- To take an integer input from user.
- To use conditional statements for checking sign of number.
- To display result as Positive, Negative, or Zero.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read integer n from user.
3) If n > 0 → print "Positive".
4) Else if n < 0 → print "Negative".
5) Else → print "Zero".
6) End program.

STEPS TO RUN:
- Save as: PositiveNegativeCheck.java
- Compile: javac PositiveNegativeCheck.java
- Run:     java PositiveNegativeCheck

=====================================================
*/

import java.util.Scanner;

public class PositiveNegativeCheck {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int n = sc.nextInt();

        if (n > 0) {
            System.out.println(n + " is a Positive Number.");
        } else if (n < 0) {
            System.out.println(n + " is a Negative Number.");
        } else {
            System.out.println("The number is Zero.");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter a number: 15
15 is a Positive Number.

Enter a number: -8
-8 is a Negative Number.

Enter a number: 0
The number is Zero.

=================================================

RESULT:
- Successfully implemented program to check sign of a number.
- Program correctly identifies Positive, Negative, and Zero inputs.
=================================================
*/
