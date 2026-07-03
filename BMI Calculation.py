import sys

height= int(input("Enter the Height (m) : "))
weight= float(input("Enter the weight (Kg) : "))

BMI = weight / (height * height ) 
print(f"Your BMI is : {BMI:.2f}")

if BMI <= 18.5:
    print("Your BMI is UnderWeight :")

elif BMI <= 24.5:
    print("Your BMI is Normal :")
elif BMI <= 29.9:
    print("Your BMI is Overweight :")
else:
    print("Your BMI is Obesity  :")