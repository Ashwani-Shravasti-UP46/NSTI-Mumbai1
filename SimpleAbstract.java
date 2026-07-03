/*
=====================================================
PRACTICAL: Abstract Class + User Input (Simple)
=====================================================

AIM:
- Abstract class और उसके override method का basic उपयोग दिखाना
- User से input लेकर rectangle का area निकालना

OBJECTIVE:
- abstract class बनाना
- subclass में abstract method override करना
- Scanner से input लेना और result दिखाना

TOOLS:
- JDK 8+ (javac, java)
- कोई भी editor/IDE

ALGORITHM:
1) Shape नाम की abstract class बनाएं जिसमें abstract double area() हो।
2) Rectangle subclass बनाएँ: length, breadth लेकर area = l*b लौटाए।
3) main() में length, breadth input लें।
4) Rectangle का object बनाकर area() print करें।

STEPS TO RUN:
- Save: SimpleAbstract.java
- Compile: javac SimpleAbstract.java
- Run:     java SimpleAbstract

EXPECTED OUTPUT (उदाहरण):
Enter length: 10
Enter breadth: 5
Area = 50.0

RESULT:
- Abstract class व overriding की basic समझ बनी और user input से area निकला।
=====================================================
*/

import java.util.Scanner;

// ----- Abstract Base Class -----
abstract class Shape {
    // NOTE: यहाँ properties optional हैं; simple रखने को सिर्फ method रखा है
    abstract double area();
}

// ----- Subclass: Rectangle -----
class Rectangle extends Shape {
    private double length, breadth;

    Rectangle(double length, double breadth) {
        this.length = length;
        this.breadth = breadth;
    }

    @Override
    double area() {
        return length * breadth; // l * b
    }
}

// ----- Main Class -----
public class SimpleAbstract {
    public static void main(String[] args) {
        // --- User Input (Simple) ---
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter length: ");
        double l = sc.nextDouble();
        System.out.print("Enter breadth: ");
        double b = sc.nextDouble();

        // --- Polymorphism (Shape ref) ---
        Shape rect = new Rectangle(l, b);

        // --- Output ---
        System.out.println("Area = " + rect.area());

        sc.close();
    }
}
