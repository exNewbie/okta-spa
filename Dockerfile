FROM node:latest
LABEL maintainer "Trung Ly <trungldd@hotmail.com>"

EXPOSE 4200:4200

WORKDIR /home/node

RUN npm install -g @angular/cli && ng new angular-oauth2-okta
RUN cd /home/node/angular-oauth2-okta && ng g c profile && \
    echo "claims: string; \
accessToken: string; \
idToken: string;" >> src/app/profile/profile.component.ts && \
    npm install angular-oauth2-oidc --save && \
    ng g c home && \
    mkdir -p src/app/shared/auth && \
    echo "export * from './auth/auth.guard.service';" >> src/app/shared/index.ts

COPY src /home/node/angular-oauth2-okta/src

WORKDIR /home/node/angular-oauth2-okta
ENTRYPOINT ["ng", "serve", "--disable-host-check", "--host", "0.0.0.0"]
