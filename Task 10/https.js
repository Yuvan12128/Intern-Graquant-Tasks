const https = require('https')

const server=https.createServer((req,res)=>{
    res.writeHead(400,{'content-type':'text/plain'})
    res.end('Hello World')
})

server.listen(8080,'localhost',()=>{
    console.log('local host 8080');
    
})