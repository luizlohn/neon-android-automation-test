# Neon Android Automation Test
Testing Status and texts with
- Calabash
- Cucumber 
- Ruby


## How to Configure Environment ##

### Install ruby on Windows ###
Access to step-by-step help:
* [Install Ruby](http://installrails.com)

Verify Ruby version
```shell
$ ruby -v
```

### Install Bundle ###
Access project root path to install bundle:
```shell
cd /neon-website-automation-test
gem install bundler
```

### Install all gems ###
In the same project root path run the follow command:
```shell
bundle install
```

### Drivers necessary: ###

* Open Emulator or use a real device in Debug mode

### Execute tests###
Execute this command inside the project:
```shell
$ rake run[APP,ENVIRONMENT,LANGUAGE,CI,DEBUGGER,PROFILE]
```
Understand command:  
APP: App Name 
ENVIRONMENT: dev, master  
LANGUAGE: pt, es (should be implemented)  
RUNNER: local, ci  (prepareted to local)
DEBUGGER: true, false
PROFILE: [profiles](cucumber.yml)  

Example: 
```shell
bundle exec rake run[Cadastro_de_Clientes.apk,dev,pt,local,true,manager_users]
```


### PlayList listened to do this project: ###
[Deezer Funk 2018](https://www.deezer.com/playlist/1362769557?utm_source=deezer&utm_content=playlist-1362769557&utm_term=1624798546_1543508884&utm_medium=web)