# ======================================================
# 📘 Practical – 1 : Check Even or Odd
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to check whether a number 
#   is Even or Odd.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Input a number from user
#   3. Divide the number by 2
#   4. If remainder = 0 → Number is Even
#   5. Else → Number is Odd
#   6. Display result
#   7. Stop program

# 🔹 Steps:
#   Step 1: Start the program
#   Step 2: Take input from the user
#   Step 3: Apply modulus operator (%) 
#   Step 4: If remainder == 0 → print Even
#   Step 5: Else → print Odd
#   Step 6: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input from the user
num = int(input("Enter a number: "))

# Step 2: Apply modulus operator to check remainder
if num % 2 == 0:
    # Step 3: If remainder is 0, number is Even
    print(num, "is Even")
else:
    # Step 4: Otherwise number is Odd
    print(num, "is Odd")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Enter a number: 7
# 7 is Odd
#
# Enter a number: 10
# 10 is Even
# ======================================================

# 🔹 Result:
# The program successfully checks and displays whether 
# the entered number is Even or Odd.
# ======================================================
