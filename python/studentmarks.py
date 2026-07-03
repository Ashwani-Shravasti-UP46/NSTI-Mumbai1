# ======================================================
# 📘 Practical – 25 : Student Marks (Total & Percentage using Class)
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to create a Student class 
#   and calculate total marks and percentage.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define Student class
#   3. Initialize roll number, name, and marks of subjects
#   4. Define method to calculate total = sum of marks
#   5. Define method to calculate percentage = total / number of subjects
#   6. Define display() method to print details
#   7. Create student objects
#   8. Call methods and print result
#   9. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define Student class
#   Step 3: Initialize student details in constructor
#   Step 4: Define total() method
#   Step 5: Define percentage() method
#   Step 6: Define display() method
#   Step 7: Create objects and display details
#   Step 8: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define Student class
class Student:
    # Step 2: Constructor
    def __init__(self, roll, name, marks):
        self.roll = roll
        self.name = name
        self.marks = marks  # list of marks

    # Step 3: Method to calculate total
    def total(self):
        return sum(self.marks)

    # Step 4: Method to calculate percentage
    def percentage(self):
        return self.total() / len(self.marks)

    # Step 5: Method to display details
    def display(self):
        print("Roll No:", self.roll)
        print("Name:", self.name)
        print("Marks:", self.marks)
        print("Total Marks:", self.total())
        print("Percentage:", round(self.percentage(), 2), "%")
        print("-------------------------")

# Step 6: Create student objects
s1 = Student(1, "Sunil", [85, 90, 88, 92, 80])
s2 = Student(2, "Komal", [75, 70, 80, 78, 72])

# Step 7: Display student details
s1.display()
s2.display()

# ======================================================
# 🔹 Sample Output
# ======================================================
# Roll No: 1
# Name: Sunil
# Marks: [85, 90, 88, 92, 80]
# Total Marks: 435
# Percentage: 87.0 %
# -------------------------
# Roll No: 2
# Name: Komal
# Marks: [75, 70, 80, 78, 72]
# Total Marks: 375
# Percentage: 75.0 %
# -------------------------
# ======================================================

# 🔹 Result:
# The program successfully creates a Student class and 
# calculates total marks and percentage of students.
# ======================================================
