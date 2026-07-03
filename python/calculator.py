# ======================================================
# 📘 Practical – 20 : Simple Calculator using Functions
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program for a simple calculator 
#   using functions to perform +, -, *, / operations.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define functions for addition, subtraction, 
#      multiplication, and division
#   3. Take two numbers from user
#   4. Take operator choice from user
#   5. Call respective function
#   6. Display result
#   7. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define functions add(), sub(), mul(), div()
#   Step 3: Take two numbers from user
#   Step 4: Take operator input
#   Step 5: Call respective function
#   Step 6: Print result
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define functions
def add(x, y):
    return x + y

def sub(x, y):
    return x - y

def mul(x, y):
    return x * y

def div(x, y):
    if y == 0:
        return "Error: Division by Zero"
    else:
        return x / y

# Step 2: Take input from user
a = float(input("Enter first number: "))
b = float(input("Enter second number: "))
op = input("Enter operator (+, -, *, /): ")

# Step 3: Perform operation
if op == '+':
    print("Result:", add(a, b))
elif op == '-':
    print("Result:", sub(a, b))
elif op == '*':
    print("Result:", mul(a, b))
elif op == '/':
    print("Result:", div(a, b))
else:
    print("Invalid Operator")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter first number: 10
# Enter second number: 5
# Enter operator (+, -, *, /): +
# Result: 15.0
#
# Case 2:
# Enter first number: 8
# Enter second number: 0
# Enter operator (+, -, *, /): /
# Result: Error: Division by Zero
# ======================================================

# 🔹 Result:
# The program successfully performs addition, subtraction, 
# multiplication, and division using functions.
# ======================================================
