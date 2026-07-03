/*
=====================================================
PRACTICAL: Multiple Products (Array of Objects) in Java
=====================================================

AIM:
- To write a Java program that stores multiple product details 
  using array of objects and calculates total values.

OBJECTIVE:
- To create Product class with id, name, price, and quantity.
- To accept details for multiple products (array of objects).
- To calculate total value of each product.
- To display all product details along with grand total.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Create a class Product with fields: id, name, price, quantity.
2) Create methods to input details and display details with total value.
3) In main(), read number of products n.
4) Create array of Product objects.
5) For each object, call inputDetails().
6) Display all product details in tabular form.
7) Compute and display grand total of all products.

STEPS TO RUN:
- Save as: ProductArray.java
- Compile: javac ProductArray.java
- Run:     java ProductArray

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

    double getTotalValue() {
        return price * quantity;
    }

    void displayDetails() {
        System.out.printf("%-10d %-15s %-10.2f %-10d %-10.2f%n",
                          id, name, price, quantity, getTotalValue());
    }
}

public class ProductArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of products: ");
        int n = sc.nextInt();

        Product[] products = new Product[n];
        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter details for Product " + (i + 1));
            products[i] = new Product();
            products[i].inputDetails(sc);
        }

        double grandTotal = 0;

        System.out.println("\n================= Product List =================");
        System.out.printf("%-10s %-15s %-10s %-10s %-10s%n",
                          "ProdID", "Name", "Price", "Quantity", "TotalValue");
        System.out.println("------------------------------------------------");

        for (Product p : products) {
            p.displayDetails();
            grandTotal += p.getTotalValue();
        }

        System.out.println("------------------------------------------------");
        System.out.printf("Grand Total Value of All Products = %.2f%n", grandTotal);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

Enter number of products: 2

Enter details for Product 1
Enter Product ID: 101
Enter Product Name: Laptop
Enter Product Price: 50000
Enter Product Quantity: 2

Enter details for Product 2
Enter Product ID: 102
Enter Product Name: Mobile
Enter Product Price: 15000
Enter Product Quantity: 3

================= Product List =================
ProdID     Name            Price      Quantity   TotalValue
------------------------------------------------
101        Laptop          50000.00   2          100000.00
102        Mobile          15000.00   3          45000.00
------------------------------------------------
Grand Total Value of All Products = 145000.00

=================================================

RESULT:
- Successfully implemented multiple product system using array of objects.
- Program displays individual totals and grand total value.
=================================================
*/
