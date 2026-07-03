/*
=====================================================
PRACTICAL: Fibonacci Series in Java
=====================================================

AIM:
- To write a Java program that generates Fibonacci series.

OBJECTIVE:
- To use loops for generating series.
- To take user input for number of terms.
- To display Fibonacci series up to given terms.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Ask user for number of terms (n).
3) Initialize first two terms: a = 0, b = 1.
4) Print first two terms.
5) Loop from 3 to n:
      next = a + b
      print next
      update a = b, b = next
6) End program.

STEPS TO RUN:
- Save as: FibonacciSeries.java
- Compile: javac FibonacciSeries.java
- Run:     java FibonacciSeries

=====================================================
*/

import java.util.Scanner;

public class FibonacciSeries {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of terms: ");
        int n = sc.nextInt();

        int a = 0, b = 1;

        System.out.println("Fibonacci Series up to " + n + " terms:");

        if (n >= 1) {
            System.out.print(a + " ");
        }
        if (n >= 2) {
            System.out.print(b + " ");
        }

        for (int i = 3; i <= n; i++) {
            int next = a + b;
            System.out.print(next + " ");
            a = b;
            b = next;
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter number of terms: 7
Fibonacci Series up to 7 terms:
0 1 1 2 3 5 8

=================================================

RESULT:
- Successfully implemented Fibonacci series in Java.
- Program generates sequence up to the given number of terms.
=================================================
*/
