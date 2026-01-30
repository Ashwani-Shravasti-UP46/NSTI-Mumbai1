# age = 19
# student = True
# if age < 20:
#     if student:
#         print("student Discount")
#     else:
#         print("no discount") 
import calendar
year = input("Enter year: ") 
month = int(input("Enter month: ")) 
cal = calendar.monthcalendar(year, month)
print("Mo TuWe Th Fr Sa Su")
for week in cal:
            for day in week:
                  if day == 0:
                        print(" ", end = " ")
                  else:
                        print(f"{day:2}", end=" ")
            print()