import sys

# l=int(input("Enter Your Length :"))
# b=int(input("Enter Your Width :"))
# n=float(input("enter radius :"))

# print("the user input is :", l ,"," ,b, "and", n )

# area=l*b
# print("Area Of Rectangle IS",area)
# pi=3.14
# circle=2*3.14*n
# print("Area Of circle:",circle)


n=int(input("Enter No:"))  
if(n < 2):
    print("is not prime",n)
else:
    is_prime = True
    for i in range(2, n):
        if(n % i == 0):
            is_prime = False
            break
    if(is_prime):
        print("prime",n)
    else:
        print("is not prime",n)
    