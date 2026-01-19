# ashu_runner.py
# Yeh file .as files ko chalayegi

import sys
import os

variables = {}
program_running = False

def run_ashu_code(lines):
    global variables, program_running
    
    for line in lines:
        line = line.strip()
        if not line or line.startswith('#'):
            continue
            
        if line == "hye Ashu":
            program_running = True
            print("Program shuru! 😎")
            continue
            
        if line == "bye Ashu":
            program_running = False
            print("Program khatam ❤️")
            return  # ya break kar sakte ho agar multiple nahi chahiye
            
        if not program_running:
            continue

        # Variable declaration / assignment
        if line.startswith("Ashu ye hai"):
            part = line[11:].strip()  # "Ashu ye hai" hataya
            if '=' not in part:
                print("Galat syntax:", line)
                continue
            var_name, value = [x.strip() for x in part.split('=', 1)]
            
            # Value parse karo
            if (value.startswith('"') and value.endswith('"')) or \
               (value.startswith("'") and value.endswith("'")):
                value = value[1:-1]
            elif value.replace('-','').replace('.','').isdigit():
                value = float(value) if '.' in value else int(value)
            else:
                # Variable reference ho sakta hai
                if value in variables:
                    value = variables[value]
                else:
                    value = value  # as-is string
            
            variables[var_name] = value
            # print(f"→ {var_name} = {value}")   # debug ke liye optional
            
        # Print command
        elif line.startswith("bolo"):
            msg = line[4:].strip()
            # Variable replace
            for var, val in variables.items():
                msg = msg.replace(var, str(val))
            # Quotes hatana agar hai
            if (msg.startswith('"') and msg.endswith('"')) or \
               (msg.startswith("'") and msg.endswith("'")):
                msg = msg[1:-1]
            print(msg)
            
        # Simple while loop support (bahut basic)
        elif line.startswith("while "):
            # Bahut limited support - sirf condition <= ya < wala
            cond = line[6:].strip()
            # Yahan full parser nahi bana rahe, simple assume karte hain
            print("While loop shuru (simple mode)...")
            # Note: full while ke liye code ko block padhna padega → advanced version chahiye toh bata
            
        else:
            print("Samajh nahi aaya ye line:", line)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python ashu_runner.py program.as")
        sys.exit(1)
        
    file_path = sys.argv[1]
    if not file_path.endswith('.as'):
        print("Sirf .as file chal sakti hai!")
        sys.exit(1)
        
    if not os.path.exists(file_path):
        print("File nahi mili:", file_path)
        sys.exit(1)
    
    with open(file_path, 'r', encoding='utf-8') as f:
        code_lines = f.readlines()
    
    print(f"Chal raha hai: {os.path.basename(file_path)}")
    run_ashu_code(code_lines)