/*
=====================================================
PRACTICAL: Product Details in Java
=====================================================

AIM:
- To write a Java program that stores and displays product details.

OBJECTIVE:
- To create a class Product with attributes like id, name, price, and quantity.
- To read details of product from user.
- To display the product details.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Create a class Product with fields: id, name, price, quantity.
2) Create methods to input details and display details.
3) In main(), create a Product object.
4) Call methods to read product details from user.
5) Display product details.
6) End program.

STEPS TO RUN:
- Save as: ProductDetails.java
- Compile: javac ProductDetails.java
- Run:     java ProductDetails

=====================================================
*/

import java.util.Scanner;

class Product {
    int id;
    String name;
    double price;
    int quantity;

    void inputDetails(Scanner sc) {
        System.out.print("Enter Product ID: ");
        id = sc.nextInt();
        sc.nextLine(); // consume newline
        System.out.print("Enter Product Name: ");
        name = sc.nextLine();
        System.out.print("Enter Product Price: ");
        price = sc.nextDouble();
        System.out.print("Enter Product Quantity: ");
        quantity = sc.nextInt();
    }

    void displayDetails() {
        System.out.println("\n=== Product Details ===");
        System.out.println("Product ID: " + id);
        System.out.println("Product Name: " + name);
        System.out.println("Product Price: " + price);
        System.out.println("Product Quantity: " + quantity);
        System.out.println("Total Value: " + (price * quantity));
    }
}

public class ProductDetails {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Product p1 = new Product();
        p1.inputDetails(sc);
        p1.displayDetails();

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter Product ID: 101
Enter Product Name: Laptop
Enter Product Price: 45000
Enter Product Quantity: 2

=== Product Details ===
Product ID: 101
Product Name: Laptop
Product Price: 45000.0
Product Quantity: 2
Total Value: 90000.0

=================================================

RESULT:
- Successfully created Product class with id, name, price, and quantity.
- Program accepts product details from user and displays them properly.
=================================================
*/
