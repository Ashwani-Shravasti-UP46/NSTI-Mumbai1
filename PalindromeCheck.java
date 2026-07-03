/*
=====================================================
PRACTICAL: Palindrome Number Check in Java
=====================================================
*/

import java.util.Scanner;

public class PalindromeCheck{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int n = sc.nextInt();

        int original = n;
        int rev = 0;

        while (n > 0) {
            int digit = n % 10;
            rev = rev * 10 + digit;
            n = n / 10;
        }

        if (original == rev) {
            System.out.println(original + " is a Palindrome Number.");
        } else {
            System.out.println(original + " is Not a Palindrome Number.");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter a number: 121
121 is a Palindrome Number.

Enter a number: 123
123 is Not a Palindrome Number.

=================================================

RESULT:
- Successfully implemented palindrome number check in Java.
- Program correctly identifies whether a number is palindrome or not.
=================================================
*/
