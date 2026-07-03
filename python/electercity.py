# ======================================================
# 📘 Practical – 9 : Electricity Bill Calculator
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to calculate the electricity 
#   bill based on units consumed using given tariff slabs.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Take number of units consumed as input
#   3. Apply tariff rules:
#        a) For first 100 units → Rs. 5 per unit
#        b) For next 100 units → Rs. 7 per unit
#        c) For above 200 units → Rs. 10 per unit
#   4. Calculate total bill
#   5. Print result
#   6. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Input units consumed
#   Step 3: Check slab range
#   Step 4: Calculate bill using conditions
#   Step 5: Print total bill
#   Step 6: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input of units consumed
units = int(input("Enter total units consumed: "))

# Step 2: Initialize bill
bill = 0

# Step 3: Apply tariff conditions
if units <= 100:
    bill = units * 5
elif units <= 200:
    bill = (100 * 5) + (units - 100) * 7
else:
    bill = (100 * 5) + (100 * 7) + (units - 200) * 10

# Step 4: Print final bill
print("Total Electricity Bill = Rs.", bill)

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter total units consumed: 75
# Total Electricity Bill = Rs. 375
#
# Case 2:
# Enter total units consumed: 150
# Total Electricity Bill = Rs. 850
#
# Case 3:
# Enter total units consumed: 250
# Total Electricity Bill = Rs. 1850
# ======================================================

# 🔹 Result:
# The program successfully calculates the electricity bill 
# according to the number of units consumed and tariff slabs.
# ======================================================
