# ===============================
# Python Lists & List Comprehension
# Complete Practice Code
# ===============================

# Exercise 1: List from 1 to 10
numbers = list(range(1, 11))
print("1 to 10:", numbers)

# Exercise 2 & 3: Access last element & append
nums = [3, 6, 9, 12]
print("Last element:", nums[-1])
nums.append(15)
print("After append:", nums)

# Exercise 4: Squares
nums = [1, 2, 3, 4, 5]
squares = [n * n for n in nums]
print("Squares:", squares)

# Exercise 5: Even numbers
nums = [1, 2, 3, 4, 5, 6, 7, 8]
evens = [n for n in nums if n % 2 == 0]
print("Even numbers:", evens)

# Exercise 6: Square even, keep odd same
nums = [1, 2, 3, 4, 5]
result = [n * n if n % 2 == 0 else n for n in nums]
print("Square even, odd same:", result)

# Exercise 7: Uppercase names
names = ["john", "sara", "mike"]
upper_names = [name.upper() for name in names]
print("Uppercase names:", upper_names)
 
# Exercise 8: Words longer than 3 chars
words = ["hi", "hello", "cat", "python", "AI"]
long_words = [word for word in words if len(word) > 3]
print("Words > 3 chars:", long_words)

# Exercise 9: First letters
words = ["apple", "banana", "cherry"]
letters = [word[0] for word in words]
print("First letters:", letters)

# Exercise 10: Divisible by 3 and > 10
nums = [3, 6, 9, 12, 15, 18, 21]
filtered = [n for n in nums if n % 3 == 0 and n > 10]
print("Div by 3 & >10:", filtered)

# Exercise 11: Flatten list
matrix = [[1, 2], [3, 4], [5, 6]]
flat = [num for row in matrix for num in row]
print("Flattened list:", flat)
