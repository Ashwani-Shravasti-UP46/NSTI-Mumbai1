# ======================================================
# 📘 Practical – 24 : Product Details using Constructor
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to create a Product class 
#   using constructor and display product details.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define Product class
#   3. Initialize product id, name, price, quantity using constructor
#   4. Define display() method to print details
#   5. Create multiple product objects
#   6. Call display() for each object
#   7. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define Product class
#   Step 3: Create constructor with product details
#   Step 4: Define display() method
#   Step 5: Create product objects
#   Step 6: Display their details
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define Product class
class Product:
    # Step 2: Constructor
    def __init__(self, pid, name, price, qty):
        self.pid = pid
        self.name = name
        self.price = price
        self.qty = qty

    # Step 3: Method to display details
    def display(self):
        print("Product ID:", self.pid)
        print("Product Name:", self.name)
        print("Price:", self.price)
        print("Quantity:", self.qty)
        print("Total Value:", self.price * self.qty)
        print("-------------------------")

# Step 4: Create Product objects
p1 = Product(201, "Laptop", 55000, 2)
p2 = Product(202, "Mouse", 500, 10)
p3 = Product(203, "Keyboard", 800, 5)

# Step 5: Display product details
p1.display()
p2.display()
p3.display()

# ======================================================
# 🔹 Sample Output
# ======================================================
# Product ID: 201
# Product Name: Laptop
# Price: 55000
# Quantity: 2
# Total Value: 110000
# -------------------------
# Product ID: 202
# Product Name: Mouse
# Price: 500
# Quantity: 10
# Total Value: 5000
# -------------------------
# Product ID: 203
# Product Name: Keyboard
# Price: 800
# Quantity: 5
# Total Value: 4000
# -------------------------
# ======================================================

# 🔹 Result:
# The program successfully creates a Product class using 
# constructor and displays product details.
# ======================================================
