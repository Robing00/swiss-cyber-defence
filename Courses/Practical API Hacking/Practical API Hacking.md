
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
>  `sudo mv Postman`
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
> `sudo apt install docker.io`
> Ensure you use docker-compose 2.x version
> `docker-compose --version`
> Otherwise: https://stackoverflow.com/questions/49839028/how-to-upgrade-docker-compose-to-latest-version
> `cd ~/labs/crAPI/deploy/docker`
> `sudo docker-compose -f docker-compose.yml --compatibility up -d`

> [!caution] 
> If there is error, you can try:
>  `docker volume rm docker_postgresql-data`
>  `docker volume rm docker_mongodb-data`

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

