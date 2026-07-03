# ======================================================
# 📘 Practical – 23 : Employee Details using Class
# ======================================================

# 🔹 Aim / Objective:
#   To write a Python program to create an Employee class 
#   and display employee details using object.

# 🔹 Tools Required:
#   - Python 3.x Interpreter
#   - Text Editor / IDE (IDLE, VS Code, PyCharm etc.)

# 🔹 Algorithm:
#   1. Start program
#   2. Define Employee class
#   3. Initialize employee id, name, department, salary
#   4. Define display() method to print details
#   5. Create multiple employee objects
#   6. Call display() for each object
#   7. Stop program

# 🔹 Steps:
#   Step 1: Start program
#   Step 2: Define Employee class
#   Step 3: Create constructor with employee details
#   Step 4: Define display() method
#   Step 5: Create employee objects
#   Step 6: Display their details
#   Step 7: Stop program

# ======================================================
# 🔹 Code
# ======================================================

# Step 1: Define Employee class
class Employee:
    # Step 2: Constructor
    def __init__(self, emp_id, name, dept, salary):
        self.emp_id = emp_id
        self.name = name
        self.dept = dept
        self.salary = salary

    # Step 3: Method to display details
    def display(self):
        print("Employee ID:", self.emp_id)
        print("Name:", self.name)
        print("Department:", self.dept)
        print("Salary:", self.salary)
        print("-------------------------")

# Step 4: Create Employee objects
e1 = Employee(101, "Sunil", "IT", 50000)
e2 = Employee(102, "Komal", "HR", 40000)

# Step 5: Display employee details
e1.display()
e2.display()

# ======================================================
# 🔹 Sample Output
# ======================================================
# Employee ID: 101
# Name: Sunil
# Department: IT
# Salary: 50000
# -------------------------
# Employee ID: 102
# Name: Komal
# Department: HR
# Salary: 40000
# -------------------------
# ======================================================

# 🔹 Result:
# The program successfully creates an Employee class and 
# displays details of employees using objects.
# ======================================================
