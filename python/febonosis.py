# ======================================================
# 📘 Practical – 13 : Fibonacci Series
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to generate Fibonacci 
#   series up to n terms.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input number of terms (n)
#   3. Initialize first two terms: a = 0, b = 1
#   4. Print first two terms
#   5. Loop from 3 to n:
#        - Calculate next term = a + b
#        - Update a = b, b = next
#        - Print next term
#   6. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Take input n from user
#   Step 3: Initialize a = 0, b = 1
#   Step 4: Print first two terms
#   Step 5: Loop from 3 to n and generate next terms
#   Step 6: Print series
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input for number of terms
n = int(input("Enter number of terms: "))

# Step 2: Initialize first two terms
a, b = 0, 1

# Step 3: Handle case if n <= 0
if n <= 0:
    print("Please enter a positive integer")

# Step 4: Handle case if n == 1
elif n == 1:
    print("Fibonacci series upto 1 term:")
    print(a)

# Step 5: If n > 1, generate series
else:
    print("Fibonacci series:")
    print(a, b, end=" ")  # print first two terms

    # Step 6: Loop to generate next terms
    for i in range(2, n):
        c = a + b
        print(c, end=" ")
        a, b = b, c   # update values

print()  # newline

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter number of terms: 5
# Fibonacci series:
# 0 1 1 2 3
#
# Case 2:
# Enter number of terms: 8
# Fibonacci series:
# 0 1 1 2 3 5 8 13
# ======================================================

# 🔹 Result:
# The program successfully generates Fibonacci series 
# up to the given number of terms.
# ======================================================
