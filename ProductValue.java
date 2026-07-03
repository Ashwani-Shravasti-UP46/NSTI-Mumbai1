/*
=====================================================
PRACTICAL: Product Total Value in Java
=====================================================

AIM:
- To write a Java program that calculates total value of a product.

OBJECTIVE:
- To create a class Product with id, name, price, and quantity.
- To calculate total value = price × quantity.
- To display product details along with total value.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Create a Product class with fields: id, name, price, quantity.
2) Read product details from user.
3) Compute total value = price × quantity.
4) Display product details and total value.
5) End program.

STEPS TO RUN:
- Save as: ProductValue.java
- Compile: javac ProductValue.java
- Run:     java ProductValue

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
        double totalValue = price * quantity;
        System.out.println("\n=== Product Details ===");
        System.out.println("Product ID: " + id);
        System.out.println("Product Name: " + name);
        System.out.println("Product Price: " + price);
        System.out.println("Product Quantity: " + quantity);
        System.out.println("Total Value: " + totalValue);
    }
}

public class ProductValue {
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

Enter Product ID: 201
Enter Product Name: Mobile
Enter Product Price: 15000
Enter Product Quantity: 3

=== Product Details ===
Product ID: 201
Product Name: Mobile
Product Price: 15000.0
Product Quantity: 3
Total Value: 45000.0

=================================================

RESULT:
- Successfully implemented program to calculate total value of product.
- Program multiplies price × quantity and displays total value with details.
=================================================
*/
