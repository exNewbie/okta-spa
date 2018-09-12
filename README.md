# okta-spa
Test Okta Single Page App


## Build the container image

```
docker build . -t okta
```


## Run an Okta container

```
docker run -d -it --name okta okta
```


## Check container logs

```
[root@ ]# docker logs okta
WARNING: Running a server with --disable-host-check is a security risk. See https://medium.com/webpack/webpack-dev-server-middleware-security-issues- information.
** Angular Live Development Server is listening on 0.0.0.0:4200, open your browser on http://localhost:4200/ **

```

### Open your browser on http://<YOUR_LOCAL_IP>:4200/
