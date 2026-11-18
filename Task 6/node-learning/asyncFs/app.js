const fs = require('fs')
// Write File 
fs.writeFile('demo.txt', 'hello yuvan shankar raja', (err) => {
    if (err) throw err;
    console.log('file written completed')
    
    // Read File
    fs.readFile('demo.txt',{encoding:'utf8' }, (err ,data)=>{
        console.log('Read File Async : ',data )
    })

    
})

console.log('Write File Completed !!');
