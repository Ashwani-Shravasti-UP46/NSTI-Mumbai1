#pip instsall pyautogui

# import pyautogui as s
# import time

# s.press("win")
# time.sleep(1)

# s.write("MS word", interval=0.2)
# s.press("enter")

# time.sleep(2)

# s.write("hello world", interval=0.2) 
# s.press("enter")

# s.write("follow for me", interval=0.2)


# s.press("enter")




import pyautogui as s
import time

# Open Run dialog
s.hotkey("win", "r")
time.sleep(1)

# Open Notepad
s.write("" ,interval=0.1)
s.press("enter")
time.sleep(2)

html_code = """<html>
<body>
<script>
let a = parseInt(prompt("Enter the number of a:"));
let operator = prompt("Enter the operator (+,-,*,/,%) :");
let b = parseInt(prompt("Enter the number of b:"));

document.write("Your operator is: +, -, *, %, / <br>");

switch(operator){
    case "+":
        document.write("Addition of " + a + " and " + b + " = " + (a+b));
        break;
    case "-":
        document.write("Subtraction of " + a + " and " + b + " = " + (a-b));
        break;
    case "*":
        document.write("Multiplication of " + a + " and " + b + " = " + (a*b));
        break;
    case "%":
        document.write("Modulus of " + a + " and " + b + " = " + (a%b));
        break;
    case "/":
        if(b !== 0){
            document.write("Division of " + a + " and " + b + " = " + (a/b));
        } else {
            document.write("Error: Division by zero!");
        }
        break;
    default:
        document.write("Invalid operator!");
}
</script>
</body>
</html>"""

s.write(html_code, interval=0.01)
