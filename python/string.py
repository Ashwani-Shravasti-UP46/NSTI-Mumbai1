print('++++++++++++++++++++++++++++++++++')
tup=(5,'Welcome',7,'Geeks')
print(tup)
# reating a tuple wiith nested tuples
print('++++++++++++++++++++++++++++++++++')
tup1=(0,1,2,3)
tup2=('python', 'geeks')
tup3=(tup1,tup2)
print(tup3)
# Creating a Tuple with repetition
tup1=('Geeks',)*3
print(tup1)

print('++++++++++++++++++++++++++++++++++')
# creating a tuple with the use of loop
tup=('*')
n=5
for i in range(int(n)):
    tup=(tup,)
    print(tup)

print('++++++++++++++++++++++++++++++++++')
# Accessing Tuple with Indexing
tmp= tuple('Ashwani')
print(tmp[0])

# Accessing a range of elements using licing
print(tmp[1:4])
print(tmp[:3])

print('++++++++++++++++++++++++++++++++++')
# Tuple unpacking
tmp= ('Ashwani', 'From', 'Shravasti')
#This line unpack valuse of tuple
a,b,c,=tmp
print(a)
print(b)
print(c)

print('++++++++++++++++++++++++++++++++++')
tup1 = (0, 1, 2, 3)
tup2 = ('Geeks', 'For', 'Geeks')

tup3 = tup1 + tup2
print(tup3)


print('++++++++++++++++++++++++++++++++++')
tup = tuple('AshwaniBouddh')

# Removing First element
print(tup[1:])

# Reversing the Tuple
print(tup[::-1])

# Printing elements of a Range
print(tup[:+13-4])


print('++++++++++++++++++++++++++++++++++')
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# delete second element of 'a'
del a[1]
  
# check if the second element in 'a' is deleted
print(a)
  
# slice 'a' from index 3 to 5
del a[3:5]
  
# check if the elements from index 3 to 5 in 'a' is deleted
print(a)

print('++++++++++++++++++++++++++++++++++')
# Tuple Unpacking with Asterisk (*)
tup = (1, 2, 3, 4, 5)

a, *b, c = tup

print(a) 
print(b) 
print(c)

print('++++++++++++++++++++++++++++++++++')


# Define a tuple
tup = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)

# Slice from index 2 to 5
s1 = tup[2:6]
print(s1)  

# Slice from the beginning to index 3
s2 = tup[:4]
print(s2)  

# Slice from index 5 to the end
s3 = tup[5:]
print(s3)  

# Slice the entire tuple
s4 = tup[:]
print(s4)
print('++++++++++++++++++++++++++++++++++')




print('++++++++++++++++++++++++++++++++++')


print('++++++++++++++++++++++++++++++++++')


print('++++++++++++++++++++++++++++++++++')


print('++++++++++++++++++++++++++++++++++')


print('++++++++++++++++++++++++++++++++++')


print('++++++++++++++++++++++++++++++++++')


print('++++++++++++++++++++++++++++++++++')