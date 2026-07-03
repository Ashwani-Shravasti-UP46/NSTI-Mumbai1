/*
=====================================================
PRACTICAL: Armstrong Number Check in Java
=====================================================

AIM:
- To write a Java program that checks whether 
  a given number is an Armstrong number or not.

OBJECTIVE:
- To understand the concept of Armstrong numbers.
- To extract digits of a number and calculate sum of their powers.
- To compare with the original number and display result.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read an integer n from user.
3) Store original = n.
4) Count number of digits in n.
5) Initialize sum = 0.
6) While n > 0:
       digit = n % 10
       sum = sum + (digit ^ count)   [digit raised to power of total digits]
       n = n / 10
7) If original == sum → Armstrong else Not Armstrong.
8) End program.

STEPS TO RUN:
- Save as: ArmstrongCheck.java
- Compile: javac ArmstrongCheck.java
- Run:     java ArmstrongCheck

=====================================================
*/

import java.util.Scanner;

public class ArmstrongCheck {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int n = sc.nextInt();

        int original = n;
        int count = String.valueOf(n).length();

        int sum = 0;
        int temp = n;

        while (temp > 0) {
            int digit = temp % 10;
            sum += Math.pow(digit, count);
            temp /= 10;
        }

        if (original == sum) {
            System.out.println(original + " is an Armstrong Number.");
        } else {
            System.out.println(original + " is Not an Armstrong Number.");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter a number: 153
153 is an Armstrong Number.

Enter a number: 123
123 is Not an Armstrong Number.

=================================================

RESULT:
- Successfully implemented Armstrong number check in Java.
- Program correctly identifies whether a number is Armstrong or not.
=================================================
*/
