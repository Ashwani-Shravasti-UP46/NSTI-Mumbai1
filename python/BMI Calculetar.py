# height, weight, BMI
height = float(input("Enter your height in meter (m): "))
weight = float(input("Enter your weight in kilogram (kg): "))

# BMI calculator
BMI = weight / (height * height)
print(f"Your BMI is : {BMI:.2f}")

# Conditions
if BMI <= 18.5:
    print("Your BMI is Underweight")
elif BMI <= 24.9:
    print("Your BMI is Normal weight")
elif BMI <= 29.9:
    print("Your BMI is Overweight")
else:
    print("Your BMI is Obese")
