# ======================================================
# 📘 Practical – 6 : Linear Search
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to perform Linear Search 
#   on a list of elements.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define a list of elements
#   3. Take search element from user
#   4. Traverse the list sequentially
#   5. Compare each element with search element
#   6. If found → print position
#   7. If not found after loop → print not found
#   8. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define a list of numbers
#   Step 3: Take search key from user
#   Step 4: Loop through the list
#   Step 5: If element matches key → display position
#   Step 6: If loop ends without match → display not found
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define a list
numbers = [10, 20, 30, 40, 50]

# Step 2: Take input from user
key = int(input("Enter number to search: "))

# Step 3: Initialize flag
found = False

# Step 4: Traverse list using loop
for i in range(len(numbers)):
    if numbers[i] == key:
        print("Element", key, "found at position", i)
        found = True
        break

# Step 5: If not found
if not found:
    print("Element", key, "not found in the list")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter number to search: 30
# Element 30 found at position 2
#
# Case 2:
# Enter number to search: 90
# Element 90 not found in the list
# ======================================================

# 🔹 Result:
# The program successfully implements Linear Search 
# to find an element in a list.
# ======================================================
