# ======================================================
# 📘 Practical – 19 : User ID & Password Validation
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program for User ID and Password 
#   validation using simple conditions.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Store correct User ID and Password
#   3. Take User ID and Password input from user
#   4. If both match → display "Login Successful"
#   5. Else → display "Invalid Login"
#   6. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Store predefined User ID and Password
#   Step 3: Take User ID input from user
#   Step 4: Take Password input from user
#   Step 5: Compare both with stored values
#   Step 6: Print result
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Store correct credentials
USER_ID = "admin"
PASSWORD = "12345"

# Step 2: Take input from user
uid = input("Enter User ID: ")
pwd = input("Enter Password: ")

# Step 3: Validate credentials
if uid == USER_ID and pwd == PASSWORD:
    print("Login Successful! ✅")
else:
    print("Invalid User ID or Password ❌")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter User ID: admin
# Enter Password: 12345
# Login Successful! ✅
#
# Case 2:
# Enter User ID: user
# Enter Password: 1111
# Invalid User ID or Password ❌
# ======================================================

# 🔹 Result:
# The program successfully validates User ID and Password 
# and displays login status.
# ======================================================
