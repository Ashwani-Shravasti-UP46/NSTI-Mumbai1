# -----------------------------------------------
# Practical – 26 : Grade Calculation (Based on Percentage)
# -----------------------------------------------

# Step 1: Input marks of 5 subjects from the user
# (You can increase or decrease subjects as needed)
sub1 = int(input("Enter marks of Subject 1: "))
sub2 = int(input("Enter marks of Subject 2: "))
sub3 = int(input("Enter marks of Subject 3: "))
sub4 = int(input("Enter marks of Subject 4: "))
sub5 = int(input("Enter marks of Subject 5: "))

# Step 2: Calculate Total Marks
total = sub1 + sub2 + sub3 + sub4 + sub5

# Step 3: Calculate Percentage
percentage = total / 5   # since there are 5 subjects

# Step 4: Decide Grade based on Percentage
# Using if-elif-else ladder
if percentage >= 90:
    grade = "A+"
elif percentage >= 80:
    grade = "A"
elif percentage >= 70:
    grade = "B"
elif percentage >= 60:
    grade = "C"
elif percentage >= 50:
    grade = "D"
else:
    grade = "Fail"

# Step 5: Display Result (Total, Percentage, Grade)
print("\n--- Student Result ---")
print("Total Marks     :", total)
print("Percentage      :", percentage, "%")
print("Grade Awarded   :", grade)
