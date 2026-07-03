/*
=====================================================
PRACTICAL: Leap Year Check in Java
=====================================================

AIM:
- To write a Java program that checks whether a year is a leap year or not.

OBJECTIVE:
- To take year input from user.
- To apply leap year rules:
     • Divisible by 4 → possible leap year
     • Divisible by 100 → must also be divisible by 400
- To display whether given year is leap year or not.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read year from user.
3) If (year % 400 == 0) → leap year.
4) Else if (year % 100 == 0) → not leap year.
5) Else if (year % 4 == 0) → leap year.
6) Else → not leap year.
7) End program.

STEPS TO RUN:
- Save as: LeapYearCheck.java
- Compile: javac LeapYearCheck.java
- Run:     java LeapYearCheck

=====================================================
*/

import java.util.Scanner;

public class LeapYearCheck {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a year: ");
        int year = sc.nextInt();

        if (year % 400 == 0) {
            System.out.println(year + " is a Leap Year.");
        } else if (year % 100 == 0) {
            System.out.println(year + " is Not a Leap Year.");
        } else if (year % 4 == 0) {
            System.out.println(year + " is a Leap Year.");
        } else {
            System.out.println(year + " is Not a Leap Year.");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter a year: 2024
2024 is a Leap Year.

Enter a year: 1900
1900 is Not a Leap Year.

Enter a year: 2000
2000 is a Leap Year.

=================================================

RESULT:
- Successfully implemented program to check leap year in Java.
- Program correctly applies leap year rules for all cases.
=================================================
*/
