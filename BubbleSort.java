/*
=====================================================
PRACTICAL: Bubble Sort in Java
=====================================================

AIM:
- To write a Java program that sorts an array using bubble sort.

OBJECTIVE:
- To understand the working of bubble sort algorithm.
- To repeatedly swap adjacent elements if they are in wrong order.
- To display the sorted array.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read size of array (n) and its elements from user.
3) Repeat for i = 0 to n-1:
       For j = 0 to n-i-2:
           If arr[j] > arr[j+1], swap them.
4) Print sorted array.
5) End program.

STEPS TO RUN:
- Save as: BubbleSort.java
- Compile: javac BubbleSort.java
- Run:     java BubbleSort

=====================================================
*/

import java.util.Scanner;

public class BubbleSort {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of elements: ");
        int n = sc.nextInt();
        int[] arr = new int[n];

        System.out.println("Enter " + n + " elements:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }

        System.out.println("Sorted Array (Ascending Order):");
        for (int i = 0; i < n; i++) {
            System.out.print(arr[i] + " ");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter number of elements: 5
Enter 5 elements:
64 25 12 22 11
Sorted Array (Ascending Order):
11 12 22 25 64

=================================================

RESULT:
- Successfully implemented bubble sort in Java.
- Program sorts elements of an array in ascending order.
=================================================
*/
