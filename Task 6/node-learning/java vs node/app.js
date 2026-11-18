const fs = require('fs');

console.log('1.Program started');

fs.readFile('data1.txt','utf-8',(err,data)=>{
    console.log('3. File Reading Completed');
    console.log(data);
    
    
})
console.log('2.Program continues');

