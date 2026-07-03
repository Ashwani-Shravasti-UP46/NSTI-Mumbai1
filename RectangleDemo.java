/*
=====================================================
PRACTICAL: Rectangle Class with Area & Perimeter
=====================================================

AIM:
- To write a Java program to create a Rectangle class with
  width and height, and methods to calculate area & perimeter.

OBJECTIVE:
- To demonstrate concept of classes and objects.
- To encapsulate rectangle properties (width, height).
- To calculate and display rectangle area and perimeter.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Create a class Rectangle with fields width and height.
2) Create methods:
      getArea() → returns width × height
      getPerimeter() → returns 2 × (width + height)
3) In main(), create object of Rectangle.
4) Set width & height (from user input).
5) Call methods to calculate and display area & perimeter.
6) End program.

STEPS TO RUN:
- Save as: RectangleDemo.java
- Compile: javac RectangleDemo.java
- Run:     java RectangleDemo

=====================================================
*/

import java.util.Scanner;

class Rectangle {
    double width;
    double height;

    // Constructor
    Rectangle(double w, double h) {
        width = w;
        height = h;
    }

    double getArea() {
        return width * height;
    }

    double getPerimeter() {
        return 2 * (width + height);
    }
}

public class RectangleDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter width of rectangle: ");
        double w = sc.nextDouble();
        System.out.print("Enter height of rectangle: ");
        double h = sc.nextDouble();

        Rectangle rect = new Rectangle(w, h);

        System.out.println("Area of Rectangle = " + rect.getArea());
        System.out.println("Perimeter of Rectangle = " + rect.getPerimeter());

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter width of rectangle: 10
Enter height of rectangle: 5
Area of Rectangle = 50.0
Perimeter of Rectangle = 30.0

=================================================

RESULT:
- Successfully created Rectangle class with width and height.
- Program calculates and displays area and perimeter correctly.
=================================================
*/
