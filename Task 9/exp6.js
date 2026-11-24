const fs = require('fs')
fs.writeFile('sample.txt','Welcome to Yuvan ',(err)=>{
    if (err) {
        console.log(err);
        return;
    }
    console.log('File Create Successfully.');
    
})