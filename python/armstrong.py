# ======================================================
# 📘 Practical – 2 : Armstrong Number
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to check whether a number 
#   is an Armstrong Number or not.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input a number from user
#   3. Count total digits of the number
#   4. Extract each digit one by one
#   5. Raise each digit to the power of total digits
#   6. Add all powered values together
#   7. Compare with the original number
#   8. If same → Armstrong, else → Not Armstrong
#   9. Stop program

# 🔹 Steps:
#   Step 1: Start the program
#   Step 2: Take input from the user
#   Step 3: Find total digits (order)
#   Step 4: Initialize sum = 0
#   Step 5: Copy original number into temp variable
#   Step 6: Extract each digit using modulus (%)
#   Step 7: Raise digit to 'order' power and add to sum
#   Step 8: Repeat until all digits processed
#   Step 9: Compare sum with original number
#   Step 10: Print result
#   Step 11: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input from user
num = int(input("Enter a number: "))

# Step 2: Count total digits
order = len(str(num))

# Step 3: Initialize sum = 0
sum_val = 0

# Step 4: Copy number into temp variable
temp = num

# Step 5: Loop through digits
while temp > 0:
    digit = temp % 10            # extract last digit
    sum_val += digit ** order    # add digit^order to sum
    temp //= 10                  # remove last digit

# Step 6: Compare sum with original number
if num == sum_val:
    print(num, "is an Armstrong Number")
else:
    print(num, "is NOT an Armstrong Number")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Enter a number: 153
# 153 is an Armstrong Number
#
# Enter a number: 123
# 123 is NOT an Armstrong Number
# ======================================================

# 🔹 Result:
# The program successfully checks and displays whether 
# the entered number is an Armstrong Number or not.
# ======================================================
