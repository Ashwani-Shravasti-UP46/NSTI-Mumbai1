/*
=====================================================
PRACTICAL: Bank Transaction in Java
=====================================================
=====================================================
 */

import java.util.Scanner;

class BankAccount {

    private String accountNumber;
    private String holderName;
    private double balance;

    BankAccount(String accountNumber, String holderName, double balance) {
        this.accountNumber = accountNumber;
        this.holderName = holderName;
        this.balance = balance;
    }

    void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println("Successfully Deposited: " + amount);
        } else {
            System.out.println("Invalid deposit amount!");
        }
    }

    void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println("Successfully Withdrawn: " + amount);
        } else {
            System.out.println("Insufficient balance or invalid amount!");
        }
    }

    void checkBalance() {
        System.out.println("Current Balance = " + balance);
    }
}

public class BankTransaction {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        BankAccount account = new BankAccount("ACC12345", "Sunil", 5000);

        boolean running = true;
        while (running) {
            System.out.println("\n=== Bank Transaction Menu ===");
            System.out.println("1. Deposit");
            System.out.println("2. Withdraw");
            System.out.println("3. Check Balance");
            System.out.println("4. Exit");

            int choice = readInt(sc, "Enter your choice: ");

            switch (choice) {
                case 1:
                    double dep = readDouble(sc, "Enter deposit amount: ");
                    account.deposit(dep);
                    break;
                case 2:
                    double wd = readDouble(sc, "Enter withdraw amount: ");
                    account.withdraw(wd);
                    break;
                case 3:
                    account.checkBalance();
                    break;
                case 4:
                    running = false;
                    System.out.println("Thank you for banking with us!");
                    break;
                default:
                    System.out.println("Invalid choice! Try again.");
            }
        }

        sc.close();
    }

    private static int readInt(Scanner sc, String prompt) {
        while (true) {
            System.out.print(prompt);
            String line = sc.nextLine();
            try {
                return Integer.parseInt(line.trim());
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter an integer.");
            }
        }
    }

    private static double readDouble(Scanner sc, String prompt) {
        while (true) {
            System.out.print(prompt);
            String line = sc.nextLine();
            try {
                return Double.parseDouble(line.trim());
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter a numeric value.");
            }
        }
    }
}

