# ======================================================
# 📘 Practical – 22 : Bank Account (Deposit & Withdraw using Class)
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to create a Bank Account 
#   class and implement deposit and withdraw methods.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define BankAccount class
#   3. Initialize account holder name and balance
#   4. Define method deposit(amount) → add to balance
#   5. Define method withdraw(amount) → subtract if balance is sufficient
#   6. Define method display() → show balance
#   7. Create object and perform deposit & withdraw
#   8. Print results
#   9. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define BankAccount class
#   Step 3: Initialize name and balance
#   Step 4: Define deposit() method
#   Step 5: Define withdraw() method
#   Step 6: Define display() method
#   Step 7: Create account object
#   Step 8: Perform transactions
#   Step 9: Print final balance
#   Step 10: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define BankAccount class
class BankAccount:
    # Step 2: Constructor
    def __init__(self, name, balance=0):
        self.name = name
        self.balance = balance

    # Step 3: Deposit method
    def deposit(self, amount):
        self.balance += amount
        print("Deposited:", amount, "| New Balance:", self.balance)

    # Step 4: Withdraw method
    def withdraw(self, amount):
        if amount <= self.balance:
            self.balance -= amount
            print("Withdrawn:", amount, "| Remaining Balance:", self.balance)
        else:
            print("Insufficient Balance!")

    # Step 5: Display method
    def display(self):
        print("Account Holder:", self.name, "| Balance:", self.balance)

# Step 6: Take input from user
name = input("Enter Account Holder Name: ")
acc = BankAccount(name)

# Step 7: Perform transactions
acc.display()
acc.deposit(5000)
acc.withdraw(2000)
acc.withdraw(4000)  # Example: over-withdrawal case
acc.display()

# ======================================================
# 🔹 Sample Output
# ======================================================
# Enter Account Holder Name: Sunil
# Account Holder: Sunil | Balance: 0
# Deposited: 5000 | New Balance: 5000
# Withdrawn: 2000 | Remaining Balance: 3000
# Insufficient Balance!
# Account Holder: Sunil | Balance: 3000
# ======================================================

# 🔹 Result:
# The program successfully creates a BankAccount class and 
# implements deposit, withdraw, and display functions.
# ======================================================
