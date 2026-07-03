# ======================================================
# 📘 Practical – 14 : Sum of Digits of a Number
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to calculate the sum of 
#   digits of a given number.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input a number from user
#   3. Initialize sum = 0
#   4. Repeat until number > 0
#        a) Extract last digit using modulus (%10)
#        b) Add digit to sum
#        c) Remove last digit using integer division (//10)
#   5. Print final sum
#   6. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Input number from user
#   Step 3: Initialize sum = 0
#   Step 4: Loop until number > 0
#   Step 5: Extract last digit and add to sum
#   Step 6: Remove last digit from number
#   Step 7: Print result
#   Step 8: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input from user
num = int(input("Enter a number: "))

# Step 2: Initialize sum variable
sum_digits = 0

# Step 3: Loop until number becomes 0
temp = num
while temp > 0:
    digit = temp % 10         # extract last digit
    sum_digits += digit       # add digit to sum
    temp //= 10               # remove last digit

# Step 4: Print result
print("Sum of digits of", num, "is:", sum_digits)

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter a number: 1234
# Sum of digits of 1234 is: 10
#
# Case 2:
# Enter a number: 987
# Sum of digits of 987 is: 24
# ======================================================

# 🔹 Result:
# The program successfully calculates the sum of digits 
# of a given number.
# ======================================================
