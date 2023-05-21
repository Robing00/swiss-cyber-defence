
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

