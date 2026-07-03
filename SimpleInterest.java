/*
=====================================================
PRACTICAL: Simple Interest Calculation in Java
=====================================================

AIM:
- To write a Java program that calculates Simple Interest.

OBJECTIVE:
- To read Principal, Rate of Interest, and Time from user.
- To apply formula: SI = (P × R × T) / 100.
- To display calculated Simple Interest.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read values of Principal (P), Rate (R), and Time (T).
3) Apply formula: SI = (P * R * T) / 100.
4) Print calculated Simple Interest.
5) End program.

STEPS TO RUN:
- Save as: SimpleInterest.java
- Compile: javac SimpleInterest.java
- Run:     java SimpleInterest

=====================================================
*/

import java.util.Scanner;

public class SimpleInterest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Principal amount: ");
        double p = sc.nextDouble();

        System.out.print("Enter Rate of Interest: ");
        double r = sc.nextDouble();

        System.out.print("Enter Time (in years): ");
        double t = sc.nextDouble();

        double si = (p * r * t) / 100;

        System.out.println("Simple Interest = " + si);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter Principal amount: 5000
Enter Rate of Interest: 5
Enter Time (in years): 2
Simple Interest = 500.0

=================================================

RESULT:
- Successfully implemented Simple Interest calculation in Java.
- Program correctly computes SI using formula (P × R × T) / 100.
=================================================
*/
