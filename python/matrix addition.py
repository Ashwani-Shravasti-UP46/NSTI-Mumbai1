# ======================================================
# 📘 Practical – 5 : Matrix Addition
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to perform addition of 
#   two matrices of same order.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define two matrices A and B of same size
#   3. Create an empty result matrix of same size
#   4. Traverse through rows
#   5. Traverse through columns
#   6. Add corresponding elements A[i][j] + B[i][j]
#   7. Store in result matrix
#   8. Print final matrix
#   9. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define two matrices A and B
#   Step 3: Create empty result matrix
#   Step 4: Use nested loop to traverse rows and columns
#   Step 5: Add corresponding elements
#   Step 6: Print resulting matrix
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define two matrices
A = [[1, 2, 3],
     [4, 5, 6],
     [7, 8, 9]]

B = [[9, 8, 7],
     [6, 5, 4],
     [3, 2, 1]]

# Step 2: Create empty result matrix of same size
result = [[0, 0, 0],
          [0, 0, 0],
          [0, 0, 0]]

# Step 3: Traverse through rows
for i in range(len(A)):
    # Step 4: Traverse through columns
    for j in range(len(A[0])):
        # Step 5: Add corresponding elements
        result[i][j] = A[i][j] + B[i][j]

# Step 6: Print the resulting matrix
print("Matrix Addition Result:")
for row in result:
    print(row)

# ======================================================
# 🔹 Sample Output
# ======================================================
# Matrix Addition Result:
# [10, 10, 10]
# [10, 10, 10]
# [10, 10, 10]
# ======================================================

# 🔹 Result:
# The program successfully performs matrix addition of 
# two matrices of the same order.
# ======================================================
