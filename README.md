# build-webui-admin
This repository contains the Dockerfile for the `mangovoice/webui-admin` image used to deploy the [webui-admin](https://github.com/Mango-New/webui-admin) application.

## Base Docker Image
- [mangovoice/passenger-ruby-2.1:stable](https://github.com/Mango-New/build-passenger)

## Installation
### Install Docker
See Docker [documentation](https://docs.docker.com/installation/)

### Clone repository
```sh
$ git clone git@github.com:Mango-New/build-webui-admin.git
$ cd build-webui-admin
```

### Build Image
Copy deploy key to `./ansible/files/keys`

Copy shared configuration files to
`./ansible/files/config`

Run
```sh
$ docker build -t mangovoice/webui-admin .
```

### Usage
Run
```sh
$ docker -i -p 3000:3000 -t --rm mangovoice/webui-admin
```
