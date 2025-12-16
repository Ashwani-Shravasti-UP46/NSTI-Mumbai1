empname= input("Enter employee name: ")
empID= input("Enter employee ID: ")
empdesignation= input("Enter employee designation: ")
dect= input("Enter dectuction amount: ")
basicpay= float(input("Enter basic pay: "))
hra= basicpay *0.3
da= basicpay *0.53
ta= basicpay *0.15
totalsalary= basicpay + hra + da +ta
netsalary= totalsalary - float(dect)
print("Employee Name: ", empname)
print("Employee ID: ", empID)
print("Employee Designation: ", empdesignation)
print("Basic Pay: ", basicpay)
print("Dectuction Amount: ", dect)
print("Gross Salary: ", totalsalary)
print("Net Salary: ", netsalary)
print("Salary details generated successfully!")

# --- IGNORE ---
