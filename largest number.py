import sys

a = int(input("Enter the number of A :"))
b = int(input("Enter the number B :"))
c = int(input("Enter the number of a C :"))

if a >= b and a >= c:
    lagest = a
elif b >= a and b >= c:
    lagest = b
else:
    lagest = c
print("The Largest Number is:",lagest)