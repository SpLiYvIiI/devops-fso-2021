FROM node:alpine

EXPOSE 5000

WORKDIR /frontend

COPY /example-frontend .

RUN npm install

RUN REACT_APP_BACKEND_URL=http://localhost:8000/api npm run build

RUN npm install -g serve

RUN adduser -S client

RUN chown client: /frontend

RUN chmod 700 /frontend

USER client

CMD serve -s -l 5000 build