#!/bin/bash
sudo apt update 
sudo apt install nodejs -y

sudo apt install npm -y

mkdir ~/first-node-project
cd ~/first-node-project
cat <<EOF >app.js
const http = require('http');

const hostname = '0.0.0.0';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('<h1>Hello World</h1>');
});

server.listen(port, hostname, () => {
  console.log('Server running at http://${hostname}:${port}/');
});
EOF

nohup node ~/first-node-project/app.js
