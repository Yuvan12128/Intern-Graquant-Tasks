const http = require('http');
const fs = require('fs');
//Create Server

const server = http.createServer((req, res) => {
    //console.log(req.url);
    if (req.url == '/') {
        res.writeHead(200, { "content-type": "text/plain" })
        res.end('Home Page');
    } else if (req.url == '/about') {
        res.writeHead(200, { "content-type": "text/plain" })
        res.end('About Page');
    } else if (req.url == '/file') {
        const readStream=fs.createReadStream('./sample.mp4')
        res.writeHead(200, { "content-type": "text/plain" })
        //res.end('About Page');
        readStream.pipe(res)
    }

    else {
        res.writeHead(404, { "content-type": "text/plain" })
        res.end('404 Page Not Found');
    }

    // res.writeHead(200,{'content-type':'applcation/json'})
    // res.end(`{name:'yuvan'}`)
})

server.listen(3000, () => {
    console.log("Server Listending http://localhost:3000");

})
