/*
=====================================================
PRACTICAL: Quadratic Equation Solver in Java
=====================================================

AIM:
- To write a Java program that solves a quadratic equation ax^2 + bx + c = 0.

OBJECTIVE:
- To read coefficients a, b, c from user.
- To compute discriminant D = b^2 - 4ac.
- To display roots based on D (real & distinct, real & equal, or complex).

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Read a, b, c (double).
2) If a == 0 → not a quadratic; handle as linear (bx + c = 0) or invalid.
3) Compute D = b*b - 4*a*c.
4) If D > 0 → two real distinct roots:
      r1 = (-b + sqrt(D)) / (2a), r2 = (-b - sqrt(D)) / (2a)
   If D == 0 → one real repeated root:
      r = -b / (2a)
   If D < 0 → complex roots:
      real = -b / (2a), imag = sqrt(-D) / (2a)
5) Print roots accordingly.

STEPS TO RUN:
- Save as: QuadraticEquation.java
- Compile: javac QuadraticEquation.java
- Run:     java QuadraticEquation

=====================================================
*/

import java.util.Scanner;

public class QuadraticEquation {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter coefficient a: ");
        double a = sc.nextDouble();
        System.out.print("Enter coefficient b: ");
        double b = sc.nextDouble();
        System.out.print("Enter coefficient c: ");
        double c = sc.nextDouble();

        if (a == 0) {
            if (b != 0) {
                double x = -c / b;
                System.out.println("Not quadratic (linear case). Root: x = " + x);
            } else {
                System.out.println("Invalid equation (a = 0 and b = 0).");
            }
            sc.close();
            return;
        }

        double D = b * b - 4 * a * c;

        if (D > 0) {
            double r1 = (-b + Math.sqrt(D)) / (2 * a);
            double r2 = (-b - Math.sqrt(D)) / (2 * a);
            System.out.println("Two real and distinct roots:");
            System.out.println("x1 = " + r1);
            System.out.println("x2 = " + r2);
        } else if (D == 0) {
            double r = -b / (2 * a);
            System.out.println("One real and equal root:");
            System.out.println("x = " + r);
        } else {
            double real = -b / (2 * a);
            double imag = Math.sqrt(-D) / (2 * a);
            System.out.println("Complex roots:");
            System.out.println("x1 = " + real + " + " + imag + "i");
            System.out.println("x2 = " + real + " - " + imag + "i");
        }

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Case 1 (Two real and distinct):
Enter coefficient a: 1
Enter coefficient b: -3
Enter coefficient c: 2
Two real and distinct roots:
x1 = 2.0
x2 = 1.0

Case 2 (One real and equal):
Enter coefficient a: 1
Enter coefficient b: 2
Enter coefficient c: 1
One real and equal root:
x = -1.0

Case 3 (Complex roots):
Enter coefficient a: 1
Enter coefficient b: 2
Enter coefficient c: 5
Complex roots:
x1 = -1.0 + 2.0i
x2 = -1.0 - 2.0i

Case 4 (Linear when a = 0):
Enter coefficient a: 0
Enter coefficient b: 4
Enter coefficient c: -8
Not quadratic (linear case). Root: x = 2.0

=================================================

RESULT:
- Successfully solved quadratic equations by discriminant method.
- Correctly handled real distinct, repeated, complex, and linear cases.
=================================================
*/
