/*
=====================================================
PRACTICAL: Area of Circle in Java
=====================================================

AIM:
- To write a Java program that calculates the area of a circle.

OBJECTIVE:
- To read radius of a circle from user.
- To apply formula: Area = π × r × r.
- To display calculated area.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Import Scanner class.
2) Read radius r from user.
3) Compute area = Math.PI * r * r.
4) Print calculated area.
5) End program.

STEPS TO RUN:
- Save as: AreaOfCircle.java
- Compile: javac AreaOfCircle.java
- Run:     java AreaOfCircle

=====================================================
*/

import java.util.Scanner;

public class AreaOfCircle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter radius of circle: ");
        double r = sc.nextDouble();

        double area = Math.PI * r * r;

        System.out.println("Area of Circle = " + area);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter radius of circle: 7
Area of Circle = 153.93804002589985

Enter radius of circle: 10
Area of Circle = 314.1592653589793

=================================================

RESULT:
- Successfully implemented program to calculate area of circle in Java.
- Program applies formula Area = π × r × r using Math.PI.
=================================================
*/
