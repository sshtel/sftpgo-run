# sftpgo-run


### build
```
docker build -t sftpgo .
```


### Docker run
```
docker run -d -p 8080:8080 -p 21:21 -p50000-50050:50000-50050 sftpgo
```