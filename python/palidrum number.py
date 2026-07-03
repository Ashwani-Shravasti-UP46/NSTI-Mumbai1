# ======================================================
# 📘 Practical – 16 : Palindrome Number Check
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to check whether a given 
#   number is Palindrome or Not.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input a number from user
#   3. Store original number in a variable
#   4. Reverse the number using loop
#   5. Compare reversed number with original number
#   6. If both are equal → Palindrome
#   7. Else → Not Palindrome
#   8. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Input number from user
#   Step 3: Store original number
#   Step 4: Initialize reverse = 0
#   Step 5: Loop until number > 0
#   Step 6: Extract digit and build reverse number
#   Step 7: Compare with original number
#   Step 8: Print result
#   Step 9: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input from user
num = int(input("Enter a number: "))

# Step 2: Store original number
original = num
reverse = 0

# Step 3: Loop to reverse the number
while num > 0:
    digit = num % 10                 # extract last digit
    reverse = reverse * 10 + digit   # update reverse
    num //= 10                       # remove last digit

# Step 4: Check palindrome condition
if original == reverse:
    print(original, "is a Palindrome Number")
else:
    print(original, "is NOT a Palindrome Number")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter a number: 121
# 121 is a Palindrome Number
#
# Case 2:
# Enter a number: 123
# 123 is NOT a Palindrome Number
# ======================================================

# 🔹 Result:
# The program successfully checks whether the given 
# number is Palindrome or Not.
# ======================================================
