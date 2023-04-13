FROM node:14

WORKDIR /usr/src/app

ENV clientID=1095997935461867522 \
    clientSecret=A6E29pgfAJ6y8FnFty2io2Pi3gOi5GRE \
    callBackURL=https://google.com \
    admin=944953039465361468 \
    token=MTA5NTk5NzkzNTQ2MTg2NzUyMg.Gx66kG.t4ufmUMMGvUE_9aFgo9qI2dyVIz-7a3UTbnudc \
    prefix=. \
    port=3000

ADD src .

COPY package*.json ./

RUN npm install

EXPOSE 3000

CMD clientID=$clientID clientSecret=$clientSecret callBackURL=$callBackURL admin=$admin token=$token prefix=$prefix port=$port node index.js
