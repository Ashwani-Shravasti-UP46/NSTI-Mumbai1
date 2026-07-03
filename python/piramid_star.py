# ======================================================
# 📘 Practical – 18 : Pyramid Star Pattern
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to print a pyramid 
#   star pattern using loops.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input number of rows from user
#   3. Loop i from 1 to rows
#   4. Print (rows - i) spaces
#   5. Print (2*i - 1) stars
#   6. Go to next line
#   7. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Take number of rows from user
#   Step 3: Use outer loop for rows
#   Step 4: Print spaces before stars
#   Step 5: Print stars in pyramid shape
#   Step 6: Move to next line
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input from user
rows = int(input("Enter number of rows: "))

# Step 2: Loop for each row
for i in range(1, rows + 1):
    # Step 3: Print spaces
    print(" " * (rows - i), end="")
    # Step 4: Print stars
    print("*" * (2 * i - 1))

# ======================================================
# 🔹 Sample Output
# ======================================================
# Enter number of rows: 5
#     *
#    ***
#   *****
#  *******
# *********
# ======================================================

# 🔹 Result:
# The program successfully prints a pyramid star pattern 
# using nested loops.
# ======================================================
