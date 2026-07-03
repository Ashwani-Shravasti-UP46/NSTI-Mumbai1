/*
=====================================================
PRACTICAL: Prime Number Check in Java
=====================================================

AIM:
- To write a Java program that checks whether 
  a given number is prime or not.

OBJECTIVE:
- To understand conditional statements and loops.
- To check divisibility of a number.
- To display whether the number is prime.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read an integer n from user.
3) If n <= 1, then it is not prime.
4) Else loop i = 2 to sqrt(n):
       if n % i == 0 → not prime.
5) If no divisor found → prime.
6) Display result.

STEPS TO RUN:
- Save as: PrimeCheck.java
- Compile: javac PrimeCheck.java
- Run:     java PrimeCheck

=====================================================
*/

import java.util.Scanner;

public class PrimeCheck {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int n = sc.nextInt();

        boolean isPrime = true;

        if (n <= 1) {
            isPrime = false;
        } else {
            for (int i = 2; i <= Math.sqrt(n); i++) {
                if (n % i == 0) {
                    isPrime = false;
                    break;
                }
            }
        }

        if (isPrime) {
            System.out.println(n + " is a Prime Number.");
        } else {
            System.out.println(n + " is Not a Prime Number.");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter a number: 7
7 is a Prime Number.

Enter a number: 12
12 is Not a Prime Number.

=================================================

RESULT:
- Successfully implemented prime number check in Java.
- Program correctly identifies whether a number is prime or not.
=================================================
*/
