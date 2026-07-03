# ======================================================
# 📘 Practical – 12 : Factorial of a Number
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to calculate the factorial 
#   of a given number.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input a number from user
#   3. If number == 0 or 1 → factorial = 1
#   4. Else, multiply numbers from 1 to n
#   5. Store result in variable fact
#   6. Print factorial
#   7. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Input number from user
#   Step 3: Initialize fact = 1
#   Step 4: Loop from 1 to number
#   Step 5: Multiply fact by each value
#   Step 6: Print result
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input from user
num = int(input("Enter a number: "))

# Step 2: Initialize factorial variable
fact = 1

# Step 3: If number is 0 or 1
if num == 0 or num == 1:
    fact = 1
else:
    # Step 4: Loop from 1 to num
    for i in range(1, num + 1):
        fact *= i

# Step 5: Print result
print("Factorial of", num, "is:", fact)

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter a number: 5
# Factorial of 5 is: 120
#
# Case 2:
# Enter a number: 0
# Factorial of 0 is: 1
# ======================================================

# 🔹 Result:
# The program successfully calculates the factorial 
# of a given number.
# ======================================================
