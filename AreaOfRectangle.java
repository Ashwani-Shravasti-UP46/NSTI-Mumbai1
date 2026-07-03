/*
=====================================================
PRACTICAL: Area of Rectangle in Java
=====================================================

AIM:
- To write a Java program that calculates the area of a rectangle.

OBJECTIVE:
- To read length and breadth from user.
- To apply formula: Area = length × breadth.
- To display calculated area.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read length and breadth from user.
3) Compute area = length * breadth.
4) Print calculated area.
5) End program.

STEPS TO RUN:
- Save as: AreaOfRectangle.java
- Compile: javac AreaOfRectangle.java
- Run:     java AreaOfRectangle

=====================================================
*/

import java.util.Scanner;

public class AreaOfRectangle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter length of rectangle: ");
        double length = sc.nextDouble();

        System.out.print("Enter breadth of rectangle: ");
        double breadth = sc.nextDouble();

        double area = length * breadth;

        System.out.println("Area of Rectangle = " + area);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter length of rectangle: 10
Enter breadth of rectangle: 5
Area of Rectangle = 50.0

Enter length of rectangle: 7.5
Enter breadth of rectangle: 4
Area of Rectangle = 30.0

=================================================

RESULT:
- Successfully implemented program to calculate area of rectangle in Java.
- Program applies formula Area = length × breadth.
=================================================
*/
