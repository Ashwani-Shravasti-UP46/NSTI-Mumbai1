/*
=====================================================
PRACTICAL: Sum of Digits in Java
=====================================================

AIM:
- To write a Java program that finds the sum of digits of a number.

OBJECTIVE:
- To extract each digit of a number.
- To add all digits together.
- To display the sum of digits.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read an integer n from user.
3) Initialize sum = 0.
4) While n > 0:
       digit = n % 10
       sum = sum + digit
       n = n / 10
5) Print sum.
6) End program.

STEPS TO RUN:
- Save as: SumOfDigits.java
- Compile: javac SumOfDigits.java
- Run:     java SumOfDigits

=====================================================
*/

import java.util.Scanner;

public class SumOfDigits {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int n = sc.nextInt();

        int sum = 0;
        int temp = n;

        while (temp > 0) {
            int digit = temp % 10;
            sum += digit;
            temp /= 10;
        }

        System.out.println("Sum of digits of " + n + " = " + sum);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter a number: 1234
Sum of digits of 1234 = 10

Enter a number: 98765
Sum of digits of 98765 = 35

=================================================

RESULT:
- Successfully implemented sum of digits program in Java.
- Program reads an integer and outputs the sum of its digits.
=================================================
*/
