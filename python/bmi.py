# ======================================================
# 📘 Practical – 8 : BMI Calculator
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to calculate the 
#   Body Mass Index (BMI) and display weight status.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Take weight (in kilograms) from user
#   3. Take height (in meters) from user
#   4. Apply formula: BMI = weight / (height * height)
#   5. If BMI < 18.5 → Underweight
#   6. If BMI 18.5–24.9 → Normal
#   7. If BMI 25–29.9 → Overweight
#   8. If BMI >= 30 → Obese
#   9. Print result
#   10. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Input weight in kilograms
#   Step 3: Input height in meters
#   Step 4: Calculate BMI using formula
#   Step 5: Compare BMI with ranges
#   Step 6: Display result with category
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Take input for weight (kg)
weight = float(input("Enter your weight in kg: "))

# Step 2: Take input for height (meters)
height = float(input("Enter your height in meters: "))

# Step 3: Calculate BMI
bmi = weight / (height * height)

# Step 4: Print BMI value
print("Your BMI is:", round(bmi, 2))

# Step 5: Classify according to BMI range
if bmi < 18.5:
    print("You are Underweight")
elif 18.5 <= bmi < 25:
    print("You are Normal weight")
elif 25 <= bmi < 30:
    print("You are Overweight")
else:
    print("You are Obese")

# ======================================================
# 🔹 Sample Output
# ======================================================
# Case 1:
# Enter your weight in kg: 50
# Enter your height in meters: 1.60
# Your BMI is: 19.53
# You are Normal weight
#
# Case 2:
# Enter your weight in kg: 85
# Enter your height in meters: 1.70
# Your BMI is: 29.41
# You are Overweight
# ======================================================

# 🔹 Result:
# The program successfully calculates BMI and classifies 
# the person into Underweight, Normal, Overweight, or Obese.
# ======================================================
