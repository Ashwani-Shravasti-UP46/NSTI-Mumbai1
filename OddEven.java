/*
=====================================================
PRACTICAL: Odd or Even Number in Java
=====================================================

AIM:
- To write a Java program that checks whether a number is odd or even.

OBJECTIVE:
- To read an integer from the user.
- To check divisibility of number by 2.
- To display whether the number is odd or even.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read integer n from user.
3) If n % 2 == 0 → print "Even".
4) Else → print "Odd".
5) End program.

STEPS TO RUN:
- Save as: OddEven.java
- Compile: javac OddEven.java
- Run:     java OddEven

=====================================================
*/

import java.util.Scanner;

public class OddEven {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int n = sc.nextInt();

        if (n % 2 == 0) {
            System.out.println(n + " is an Even Number.");
        } else {
            System.out.println(n + " is an Odd Number.");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter a number: 10
10 is an Even Number.

Enter a number: 7
7 is an Odd Number.

=================================================

RESULT:
- Successfully implemented odd-even check in Java.
- Program correctly determines whether input number is odd or even.
=================================================
*/
