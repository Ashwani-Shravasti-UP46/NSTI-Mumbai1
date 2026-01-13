#
# pip install sympy

from sympy import symbols, factor

x = symbols('x')          # x को variable बनाओ

# उदाहरण
expr1 = x**2 + 5*x + 6
print(factor(expr1))      # Output: (x + 2)*(x + 3)

expr2 = x**2 - 16
print(factor(expr2))      # (x - 4)*(x + 4)

expr3 = 2*x**2 + 7*x + 3
print(factor(expr3))      # (2*x + 1)*(x + 3)

expr4 = x**3 - 8
print(factor(expr4))      # (x - 2)*(x**2 + 2*x + 4)