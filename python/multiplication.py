# ======================================================
# 📘 Practical – 17 : Multiplication Table
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to display the 
#   multiplication table of a given number.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input a number from user
#   3. Loop from 1 to 10
#   4. Multiply number with loop counter
#   5. Print result in table format
#   6. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Input a number from user
#   Step 3: Loop variable i from 1 to 10
#   Step 4: Multiply num × i
#   Step 5: Print multiplication result
#   Step 6: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input from user
num = int(input("Enter a number to print its table: "))

# Step 2: Loop from 1 to 10
print("Multiplication Table of", num)
for i in range(1, 11):
    result = num * i
    print(num, "x", i, "=", result)

# ======================================================
# 🔹 Sample Output
# ======================================================
# Enter a number to print its table: 5
# Multiplication Table of 5
# 5 x 1 = 5
# 5 x 2 = 10
# 5 x 3 = 15
# 5 x 4 = 20
# 5 x 5 = 25
# 5 x 6 = 30
# 5 x 7 = 35
# 5 x 8 = 40
# 5 x 9 = 45
# 5 x 10 = 50
# ======================================================

# 🔹 Result:
# The program successfully prints the multiplication 
# table of the given number from 1 to 10.
# ======================================================
