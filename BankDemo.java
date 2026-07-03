/*
=====================================================
PRACTICAL: Bank Account using Inheritance & Static
=====================================================

AIM:
- To write a Java program to design a class Account using inheritance and static
  that shows all functions of the bank (withdraw, deposit).

OBJECTIVE:
- To demonstrate inheritance in Java.
- To use static variables for balance.
- To implement deposit() and withdraw() methods.
- To simulate basic banking operations.

TOOLS:
- JDK 8+ (javac, java)
- Any IDE or text editor

ALGORITHM:
1) Create a base class Bank with static balance variable.
2) Create Account class that extends Bank.
3) Provide deposit(amount) → add to balance.
4) Provide withdraw(amount) → deduct if sufficient balance.
5) In main(), create object of Account and perform transactions.
6) Display final balance after operations.
7) End program.

STEPS TO RUN:
- Save as: BankDemo.java
- Compile: javac BankDemo.java
- Run:     java BankDemo

=====================================================
*/

import java.util.Scanner;

// Base class
class Bank {
    static double balance = 0; // shared balance for all accounts
}

// Derived class
class Account extends Bank {

    void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println("Deposited: " + amount);
        } else {
            System.out.println("Invalid deposit amount!");
        }
    }

    void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println("Withdrawn: " + amount);
        } else {
            System.out.println("Insufficient balance or invalid amount!");
        }
    }

    void checkBalance() {
        System.out.println("Current Balance: " + balance);
    }
}

public class BankDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Account acc = new Account();

        int choice;
        do {
            System.out.println("\n=== Bank Menu ===");
            System.out.println("1. Deposit");
            System.out.println("2. Withdraw");
            System.out.println("3. Check Balance");
            System.out.println("4. Exit");
            System.out.print("Enter choice: ");
            choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter deposit amount: ");
                    double dep = sc.nextDouble();
                    acc.deposit(dep);
                    break;
                case 2:
                    System.out.print("Enter withdraw amount: ");
                    double wit = sc.nextDouble();
                    acc.withdraw(wit);
                    break;
                case 3:
                    acc.checkBalance();
                    break;
                case 4:
                    System.out.println("Exiting... Thank you!");
                    break;
                default:
                    System.out.println("Invalid choice!");
            }
        } while (choice != 4);

        sc.close();
    }
}

/*
================= SAMPLE OUTPUT =================

=== Bank Menu ===
1. Deposit
2. Withdraw
3. Check Balance
4. Exit
Enter choice: 1
Enter deposit amount: 5000
Deposited: 5000.0

=== Bank Menu ===
1. Deposit
2. Withdraw
3. Check Balance
4. Exit
Enter choice: 2
Enter withdraw amount: 2000
Withdrawn: 2000.0

=== Bank Menu ===
1. Deposit
2. Withdraw
3. Check Balance
4. Exit
Enter choice: 3
Current Balance: 3000.0

Enter choice: 4
Exiting... Thank you!

=================================================

RESULT:
- Successfully implemented Account class using inheritance and static.
- Program demonstrates deposit, withdraw, and balance check functions of a bank.
=================================================
*/
