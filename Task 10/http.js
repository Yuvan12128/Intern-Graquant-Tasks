const http = require('http')

const server = http.createServer((req,res)=>{
    res.writeHead(200,{'content-Type':'text/plain'})
    res.end('hello Yuvan ')
})

const port = 8080;

server.listen(port,'localhost',()=>{
    console.log(`Server running at http://localhost:${port}`);
    
})