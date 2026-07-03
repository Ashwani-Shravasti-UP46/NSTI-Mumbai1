/*
=====================================================
PRACTICAL: Binary Search in Java
=====================================================

AIM:
- To write a Java program that searches an element in an array using Binary Search.

OBJECTIVE:
- To understand the concept of binary search.
- To search an element in a sorted array efficiently.
- To display position of element if found, else show "not found".

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read size of array (n).
3) Read n elements into array (sorted in ascending order).
4) Read target element to search.
5) Initialize low = 0, high = n-1, found = false.
6) While low <= high:
       mid = (low + high) / 2
       if arr[mid] == target → found at mid
       else if arr[mid] < target → low = mid + 1
       else → high = mid - 1
7) If not found, print "Element not found".
8) End program.

STEPS TO RUN:
- Save as: BinarySearch.java
- Compile: javac BinarySearch.java
- Run:     java BinarySearch

=====================================================
*/

import java.util.Scanner;

public class BinarySearch {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of elements: ");
        int n = sc.nextInt();

        int[] arr = new int[n];
        System.out.println("Enter " + n + " elements in sorted order:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        System.out.print("Enter element to search: ");
        int target = sc.nextInt();

        int low = 0, high = n - 1;
        boolean found = false;
        int pos = -1;

        while (low <= high) {
            int mid = (low + high) / 2;

            if (arr[mid] == target) {
                found = true;
                pos = mid + 1; // 1-based index
                break;
            } else if (arr[mid] < target) {
                low = mid + 1;
            } else {
                high = mid - 1;
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

Enter number of elements: 6
Enter 6 elements in sorted order:
5 10 15 20 25 30
Enter element to search: 20
Element 20 found at position 4

Enter number of elements: 5
Enter 5 elements in sorted order:
2 4 6 8 10
Enter element to search: 7
Element 7 not found in array.

=================================================

RESULT:
- Successfully implemented Binary Search in Java.
- Program searches an element in sorted array with O(log n) complexity.
=================================================
*/
