/*
=====================================================
PRACTICAL: Reverse a Number in Java
=====================================================

AIM:
- To write a Java program that reverses a given number.

OBJECTIVE:
- To extract digits of a number using modulus and division.
- To construct the reversed number.
- To display the reversed number.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read an integer n from user.
3) Initialize rev = 0.
4) While n > 0:
       digit = n % 10
       rev = rev * 10 + digit
       n = n / 10
5) Print rev as the reversed number.
6) End program.

STEPS TO RUN:
- Save as: ReverseNumber.java
- Compile: javac ReverseNumber.java
- Run:     java ReverseNumber

=====================================================
*/

import java.util.Scanner;

public class ReverseNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int n = sc.nextInt();

        int rev = 0;
        int temp = n;

        while (temp > 0) {
            int digit = temp % 10;
            rev = rev * 10 + digit;
            temp = temp / 10;
        }

        System.out.println("Reversed Number = " + rev);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter a number: 1234
Reversed Number = 4321

Enter a number: 98765
Reversed Number = 56789

=================================================

RESULT:
- Successfully implemented reverse number program in Java.
- Program reads an integer and prints its reversed form.
=================================================
*/
