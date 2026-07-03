# ======================================================
# 📘 Practical – 3 : Temperature Conversion
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to convert temperature
#   from Celsius to Fahrenheit and vice versa.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Ask user choice → convert to Celsius or Fahrenheit
#   3. If choice is 'C':
#        a) Take input in Fahrenheit
#        b) Apply formula: C = (F - 32) × 5/9
#   4. If choice is 'F':
#        a) Take input in Celsius
#        b) Apply formula: F = (C × 9/5) + 32
#   5. Print converted result
#   6. Stop program

# 🔹 Steps:
#   Step 1: Start the program
#   Step 2: Take conversion choice from user (C/F)
#   Step 3: If C → take Fahrenheit input → convert into Celsius
#   Step 4: If F → take Celsius input → convert into Fahrenheit
#   Step 5: Otherwise show invalid choice
#   Step 6: Print result
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Ask user choice
choice = input("Convert to (C/F)? ").upper()

# Step 2: If user wants Celsius
if choice == "C":
    # Step 2a: Take Fahrenheit input
    f = float(input("Enter temperature in Fahrenheit: "))
    # Step 2b: Convert to Celsius
    c = (f - 32) * 5/9
    print("Celsius:", round(c, 2))

# Step 3: If user wants Fahrenheit
elif choice == "F":
    # Step 3a: Take Celsius input
    c = float(input("Enter temperature in Celsius: "))
    # Step 3b: Convert to Fahrenheit
    f = (c * 9/5) + 32
    print("Fahrenheit:", round(f, 2))

# Step 4: If invalid choice
else:
    print("Invalid Choice! Please enter 'C' or 'F'")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Convert to (C/F)? F
# Enter temperature in Celsius: 100
# Fahrenheit: 212.0
#
# Case 2:
# Convert to (C/F)? C
# Enter temperature in Fahrenheit: 32
# Celsius: 0.0
# ======================================================

# 🔹 Result:
# The program successfully converts temperature between
# Celsius and Fahrenheit as per user choice.
# ======================================================
