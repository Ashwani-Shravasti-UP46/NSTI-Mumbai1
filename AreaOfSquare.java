/*
=====================================================
PRACTICAL: Area of Square in Java
=====================================================

AIM:
- To write a Java program that calculates the area of a square.

OBJECTIVE:
- To read side length of a square from user.
- To apply formula: Area = side × side.
- To display calculated area.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read side length from user.
3) Compute area = side * side.
4) Print calculated area.
5) End program.

STEPS TO RUN:
- Save as: AreaOfSquare.java
- Compile: javac AreaOfSquare.java
- Run:     java AreaOfSquare

=====================================================
*/

import java.util.Scanner;

public class AreaOfSquare {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter side of square: ");
        double side = sc.nextDouble();

        double area = side * side;

        System.out.println("Area of Square = " + area);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter side of square: 5
Area of Square = 25.0

Enter side of square: 8
Area of Square = 64.0

=================================================

RESULT:
- Successfully implemented program to calculate area of square in Java.
- Program applies formula Area = side × side.
=================================================
*/
