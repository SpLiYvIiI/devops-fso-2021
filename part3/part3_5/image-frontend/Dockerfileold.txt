FROM node:alpine

EXPOSE 5000

WORKDIR /frontend

COPY /example-frontend .

RUN npm install && REACT_APP_BACKEND_URL=http://localhost:8000/api npm run build  && \
    npm install -g serve && rm -r node_modules && adduser -S client &&  \
    chown client: /frontend && chmod 700 /frontend 

USER client

CMD serve -s -l 5000 build