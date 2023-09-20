FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/X-sensei/earth1 /root/earth1
WORKDIR /root/earth1/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
