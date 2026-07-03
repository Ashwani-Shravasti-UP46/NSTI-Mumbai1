# ======================================================
# 📘 Practical – 10 : Matrix Multiplication
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to perform multiplication 
#   of two matrices.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define two matrices A and B
#   3. Check if multiplication is possible (cols of A = rows of B)
#   4. Create a result matrix with zeros
#   5. Use three nested loops:
#        - First loop for rows of A
#        - Second loop for columns of B
#        - Third loop for multiplication and sum
#   6. Store result in result[i][j]
#   7. Print result matrix
#   8. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define two matrices A and B
#   Step 3: Create empty result matrix
#   Step 4: Use nested loops to multiply
#   Step 5: Print result matrix
#   Step 6: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define two matrices
A = [[1, 2, 3],
     [4, 5, 6]]

B = [[7, 8],
     [9, 10],
     [11, 12]]

# Step 2: Create result matrix with 0s
# A has 2 rows and B has 2 columns
result = [[0, 0],
          [0, 0]]

# Step 3: Perform matrix multiplication
for i in range(len(A)):          # loop over rows of A
    for j in range(len(B[0])):   # loop over columns of B
        for k in range(len(B)):  # loop over rows of B
            result[i][j] += A[i][k] * B[k][j]

# Step 4: Print result
print("Matrix Multiplication Result:")
for row in result:
    print(row)

# ======================================================
# 🔹 Sample Output
# ======================================================
# Matrix Multiplication Result:
# [58, 64]
# [139, 154]
# ======================================================

# 🔹 Result:
# The program successfully performs multiplication 
# of two matrices using nested loops.
# ======================================================
