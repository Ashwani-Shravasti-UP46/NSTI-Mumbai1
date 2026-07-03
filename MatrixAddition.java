/*
=====================================================
PRACTICAL: Matrix Addition in Java
=====================================================

AIM:
- To write a Java program that performs addition of two matrices.

OBJECTIVE:
- To understand 2D arrays in Java.
- To implement matrix addition by taking user input.
- To display the resulting matrix.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class for input.
2) Ask user for rows and columns.
3) Declare two 2D arrays for the matrices and one for result.
4) Take input for both matrices.
5) Add corresponding elements and store in result matrix.
6) Display the result matrix.

STEPS TO RUN:
- Save as: MatrixAddition.java
- Compile: javac MatrixAddition.java
- Run:     java MatrixAddition

=====================================================
*/

import java.util.Scanner;

public class MatrixAddition {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of rows: ");
        int rows = sc.nextInt();
        System.out.print("Enter number of columns: ");
        int cols = sc.nextInt();

        int[][] a = new int[rows][cols];
        int[][] b = new int[rows][cols];
        int[][] sum = new int[rows][cols];

        System.out.println("\nEnter elements of first matrix:");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                a[i][j] = sc.nextInt();
            }
        }

        System.out.println("\nEnter elements of second matrix:");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                b[i][j] = sc.nextInt();
            }
        }

        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                sum[i][j] = a[i][j] + b[i][j];
            }
        }

        System.out.println("\nResultant Matrix after Addition:");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                System.out.print(sum[i][j] + " ");
            }
            System.out.println();
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter number of rows: 2
Enter number of columns: 2

Enter elements of first matrix:
1 2
3 4

Enter elements of second matrix:
5 6
7 8

Resultant Matrix after Addition:
6 8
10 12

=================================================

RESULT:
- Successfully implemented matrix addition in Java.
- Program reads two matrices, adds them, and displays the sum matrix.
=================================================
*/
