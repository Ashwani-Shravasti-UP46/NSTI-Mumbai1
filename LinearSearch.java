/*
=====================================================
PRACTICAL: Linear Search in Java
=====================================================

AIM:
- To write a Java program that searches an element in an array using Linear Search.

OBJECTIVE:
- To take array input from user.
- To use linear search algorithm to find target element.
- To display position of element if found, else show "not found".

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read size of array (n).
3) Read n elements into array.
4) Read target element to be searched.
5) Loop i = 0 to n-1:
       if arr[i] == target:
            print position (i+1), set flag found = true, break.
6) If not found, print "Element not found".
7) End program.

STEPS TO RUN:
- Save as: LinearSearch.java
- Compile: javac LinearSearch.java
- Run:     java LinearSearch

=====================================================
*/

import java.util.Scanner;

public class LinearSearch {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of elements: ");
        int n = sc.nextInt();

        int[] arr = new int[n];
        System.out.println("Enter " + n + " elements:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        System.out.print("Enter element to search: ");
        int target = sc.nextInt();

        boolean found = false;
        int pos = -1;

        for (int i = 0; i < n; i++) {
            if (arr[i] == target) {
                found = true;
                pos = i + 1; // 1-based position
                break;
            }
        }

        if (found) {
            System.out.println("Element " + target + " found at position " + pos);
        } else {
            System.out.println("Element " + target + " not found in array.");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter number of elements: 5
Enter 5 elements:
10 20 30 40 50
Enter element to search: 30
Element 30 found at position 3

Enter number of elements: 4
Enter 4 elements:
5 15 25 35
Enter element to search: 50
Element 50 not found in array.

=================================================

RESULT:
- Successfully implemented Linear Search in Java.
- Program searches an element sequentially and returns its position if found.
=================================================
*/
