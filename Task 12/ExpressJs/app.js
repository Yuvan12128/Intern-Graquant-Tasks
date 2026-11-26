const express = require('express');

const app = express();

const port = 3000;

app.get('/',(req,res)=>{
    res.send('Get request to the homepage')
})

app.get('/',(req,res)=>{
    res.send('Post reqiest to the homepage')
})

app.get('/about',(req,res)=>{
    res.send('About Page')
})

app.all('/',(req,res)=>{
    res.status(404).send('404 -  Page not found')
})

app.listen(port,()=>{
    console.log(`Express Server Running at http://localhost:${port}`);
    
})
