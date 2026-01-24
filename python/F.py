# Python version of your JavaScript Fibonacci code

# User input
n = int(input("Enter the value of n to generate Fibonacci series up to n terms: "))

# Initialize variables
f1 = -1
f2 = 1
f3 = 0

print(f"Fibonacci series up to n = {n}:")
print("Your Fibonacci series is: ", end="")

# Generate Fibonacci series
while f3 <= n:
    f3 = f1 + f2
    f1 = f2
    f2 = f3
    print(f3, end=" ")
