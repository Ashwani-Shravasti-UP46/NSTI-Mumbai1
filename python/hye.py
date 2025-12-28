import string
import time

text = "hello Ashwani"
temp = ""

for ch in text:
    for i in string.printable:
        time.sleep(0.02)
        print(temp + i)
        if i == ch:
            temp += ch
            break
print("Done: " + temp)