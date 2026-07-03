# ======================================================
# 📘 Practical – 4 : Simple Calculator
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to perform basic 
#   arithmetic operations (+, -, *, /) using user input.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input two numbers from user
#   3. Input an operator (+, -, *, /)
#   4. If operator is '+', perform addition
#   5. If operator is '-', perform subtraction
#   6. If operator is '*', perform multiplication
#   7. If operator is '/', perform division (check divide by zero)
#   8. Otherwise show invalid operator
#   9. Print the result
#   10. Stop program

# 🔹 Steps:
#   Step 1: Start the program
#   Step 2: Take two numbers as input
#   Step 3: Take operator as input
#   Step 4: Use if-elif conditions to perform operation
#   Step 5: Handle divide by zero in division
#   Step 6: Print result
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take two numbers
a = float(input("Enter first number: "))
b = float(input("Enter second number: "))

# Step 2: Ask for operator
op = input("Enter operator (+,-,*,/): ")

# Step 3: Perform calculation based on operator
if op == '+':
    print("Result:", a + b)

elif op == '-':
    print("Result:", a - b)

elif op == '*':
    print("Result:", a * b)

elif op == '/':
    # Step 3a: Check divide by zero
    if b != 0:
        print("Result:", a / b)
    else:
        print("Error: Division by zero not allowed")

# Step 4: Invalid operator case
else:
    print("Invalid Operator! Please use +, -, * or /")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter first number: 8
# Enter second number: 2
# Enter operator (+,-,*,/): *
# Result: 16.0
#
# Case 2:
# Enter first number: 10
# Enter second number: 5
# Enter operator (+,-,*,/): /
# Result: 2.0
#
# Case 3:
# Enter first number: 6
# Enter second number: 0
# Enter operator (+,-,*,/): /
# Error: Division by zero not allowed
# ======================================================

# 🔹 Result:
# The program successfully performs addition, subtraction, 
# multiplication and division based on user input.
# ======================================================
