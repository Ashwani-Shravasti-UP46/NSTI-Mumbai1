# ======================================================
# 📘 Practical – 15 : Reverse a Number
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to reverse the digits 
#   of a given number.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input a number from user
#   3. Initialize reverse = 0
#   4. Repeat until number > 0
#        a) Extract last digit (num % 10)
#        b) Add digit to reverse (reverse*10 + digit)
#        c) Remove last digit from number (num // 10)
#   5. Print reversed number
#   6. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Input number from user
#   Step 3: Initialize reverse = 0
#   Step 4: Loop until number > 0
#   Step 5: Extract last digit and update reverse
#   Step 6: Remove last digit from number
#   Step 7: Print reversed number
#   Step 8: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input from user
num = int(input("Enter a number: "))

# Step 2: Initialize reverse variable
reverse = 0
temp = num

# Step 3: Loop until number becomes 0
while temp > 0:
    digit = temp % 10                # extract last digit
    reverse = reverse * 10 + digit   # update reverse number
    temp //= 10                      # remove last digit

# Step 4: Print result
print("Reverse of", num, "is:", reverse)

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter a number: 1234
# Reverse of 1234 is: 4321
#
# Case 2:
# Enter a number: 9876
# Reverse of 9876 is: 6789
# ======================================================

# 🔹 Result:
# The program successfully reverses the digits of 
# a given number.
# ======================================================
