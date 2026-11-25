const http = require('http')

const server = http.createServer((req, res) => {
// if (req.url === '/') {
//     res.write('Home')
//     res.end();
// } else if (req.url === '/Students') {
//     res.write('Students')
//     res.end('\nhello ');
// } else {
//     res.statusCode = 404;

//     res.end('Not Found')
// }

if (req.method === "GET") {
    res.statusCode=200
    res.end("Get Students");

} else if (req.method === "POST") {
    res.end("Create Student");

} else if (req.method === "PUT") {
    res.end("Update Student");

} else if (req.method === "DELETE") {
    res.end("Delete Student");

} else {
    res.statusCode = 405;
    res.end("Method Not Allowed");
}
})


const PORT = 3000
server.listen(PORT, () => {
    console.log(`PORT is ${PORT}`);

})
