/*
=====================================================
PRACTICAL: Area of Triangle in Java
=====================================================

AIM:
- To write a Java program that calculates the area of a triangle.

OBJECTIVE:
- To read base and height of a triangle from user.
- To apply formula: Area = 1/2 × base × height.
- To display calculated area.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read base and height from user.
3) Compute area = 0.5 × base × height.
4) Print calculated area.
5) End program.

STEPS TO RUN:
- Save as: AreaOfTriangle.java
- Compile: javac AreaOfTriangle.java
- Run:     java AreaOfTriangle

=====================================================
*/

import java.util.Scanner;

public class AreaOfTriangle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter base of triangle: ");
        double base = sc.nextDouble();

        System.out.print("Enter height of triangle: ");
        double height = sc.nextDouble();

        double area = 0.5 * base * height;

        System.out.println("Area of Triangle = " + area);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter base of triangle: 10
Enter height of triangle: 5
Area of Triangle = 25.0

Enter base of triangle: 7
Enter height of triangle: 3
Area of Triangle = 10.5

=================================================

RESULT:
- Successfully implemented program to calculate area of triangle in Java.
- Program applies formula Area = 1/2 × base × height.
=================================================
*/
