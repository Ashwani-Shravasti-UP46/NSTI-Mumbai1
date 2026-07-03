# ======================================================
# 📘 Practical – 21 : Rectangle (Area & Perimeter using Class)
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to create a class Rectangle 
#   with methods to calculate Area and Perimeter.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define class Rectangle
#   3. Initialize length and width using constructor
#   4. Define method area() → length × width
#   5. Define method perimeter() → 2 × (length + width)
#   6. Create object of Rectangle class
#   7. Call area() and perimeter() methods
#   8. Print results
#   9. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define class Rectangle
#   Step 3: Initialize length and width
#   Step 4: Define method to calculate area
#   Step 5: Define method to calculate perimeter
#   Step 6: Create object of Rectangle
#   Step 7: Call methods and print results
#   Step 8: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define Rectangle class
class Rectangle:
    # Step 2: Constructor to initialize length and width
    def __init__(self, length, width):
        self.length = length
        self.width = width

    # Step 3: Method to calculate area
    def area(self):
        return self.length * self.width

    # Step 4: Method to calculate perimeter
    def perimeter(self):
        return 2 * (self.length + self.width)

# Step 5: Take input from user
l = float(input("Enter length of rectangle: "))
w = float(input("Enter width of rectangle: "))

# Step 6: Create object of Rectangle
rect = Rectangle(l, w)

# Step 7: Print area and perimeter
print("Area of Rectangle =", rect.area())
print("Perimeter of Rectangle =", rect.perimeter())

# ======================================================
# 🔹 Sample Output
# ======================================================
# Enter length of rectangle: 10
# Enter width of rectangle: 5
# Area of Rectangle = 50.0
# Perimeter of Rectangle = 30.0
# ======================================================

# 🔹 Result:
# The program successfully creates a Rectangle class and 
# calculates its Area and Perimeter using methods.
# ======================================================
