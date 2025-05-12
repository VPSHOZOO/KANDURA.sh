from operator import index
import socket
import random
import string
import threading
import getpass
import urllib
import getpass
import colorama
import os,sys,time,re,requests,json
from requests import post
from time import sleep
from datetime import datetime, date
import codecs
def main():
	os.system('cls' if os.name == 'nt' else 'python3 av.py')

def login():
	sys.stdout.write(f"\x1b]2;[\] DRAGON-NETWORKS :: Online Users: [1] :: Attack Sended: [1/10]\x07")
	os.system('cls' if os.name == 'nt' else 'clear')
	user = "DRAGON"
	passwd = "DRAGON"
	username = input("""\033[33m
▓█████▄  ██▀███   ▄▄▄        ▄████  ▒█████   ███▄    █    
▒██▀ ██▌▓██ ▒ ██▒▒████▄     ██▒ ▀█▒▒██▒  ██▒ ██ ▀█   █    
░██   █▌▓██ ░▄█ ▒▒██  ▀█▄  ▒██░▄▄▄░▒██░  ██▒▓██  ▀█ ██▒   
░▓█▄   ▌▒██▀▀█▄  ░██▄▄▄▄██ ░▓█  ██▓▒██   ██░▓██▒  ▐▌██▒   
░▒████▓ ░██▓ ▒██▒ ▓█   ▓██▒░▒▓███▀▒░ ████▓▒░▒██░   ▓██░   
 ▒▒▓  ▒ ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░ ░▒   ▒ ░ ▒░▒░▒░ ░ ▒░   ▒ ▒    
 ░ ▒  ▒   ░▒ ░ ▒░  ▒   ▒▒ ░  ░   ░   ░ ▒ ▒░ ░ ░░   ░ ▒░   
 ░ ░  ░   ░░   ░   ░   ▒   ░ ░   ░ ░ ░ ░ ▒     ░   ░ ░    
   ░       ░           ░  ░      ░     ░ ░           ░    
 ░                                                        
                                                                                                                   
                                           
                                     BUY @OXYDRAGON
                                     TO START TYPE USER PASS                        
						   
                        \033[[\033[33musername\033[]:\033[0m """)
	password = getpass.getpass(prompt='                        \033[[\033[33mpassword\033[]:\033[0m ')
	if username != user or password != passwd:
		print("")
		sys.exit(1)
	elif username == user and password == passwd:
		print("\033[31m                   ")
		time.sleep(1)
		main()

login()