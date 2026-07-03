# ======================================================
# 📘 Practical – 7 : Binary Search
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to perform Binary Search 
#   on a sorted list of elements.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define a sorted list of elements
#   3. Take search element from user
#   4. Initialize low = 0, high = len(list)-1
#   5. Repeat until low <= high:
#        a) Find mid = (low + high) // 2
#        b) If element at mid == key → found
#        c) If element at mid < key → search right half (low = mid+1)
#        d) Else → search left half (high = mid-1)
#   6. If not found → display not found
#   7. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define a sorted list
#   Step 3: Take search key from user
#   Step 4: Initialize low, high
#   Step 5: Loop until low <= high
#   Step 6: Calculate mid index
#   Step 7: Compare element with key
#   Step 8: Adjust search range accordingly
#   Step 9: Print result
#   Step 10: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define sorted list
numbers = [10, 20, 30, 40, 50, 60, 70]

# Step 2: Take input from user
key = int(input("Enter number to search: "))

# Step 3: Initialize low and high
low = 0
high = len(numbers) - 1
found = False

# Step 4: Loop for binary search
while low <= high:
    mid = (low + high) // 2  # Step 4a: Calculate mid index

    if numbers[mid] == key:
        print("Element", key, "found at position", mid)
        found = True
        break
    elif numbers[mid] < key:
        low = mid + 1   # Step 4b: Search right half
    else:
        high = mid - 1  # Step 4c: Search left half

# Step 5: If not found
if not found:
    print("Element", key, "not found in the list")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter number to search: 40
# Element 40 found at position 3
#
# Case 2:
# Enter number to search: 25
# Element 25 not found in the list
# ======================================================

# 🔹 Result:
# The program successfully implements Binary Search 
# to find an element in a sorted list.
# ======================================================
