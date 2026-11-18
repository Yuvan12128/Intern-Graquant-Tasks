const fs=require('fs');
const { text } = require('stream/consumers');
// Write File (Synchronous)
fs.writeFileSync('demo/text.txt','Hello Yuvan 2002 Raja');
console.log("File Written!")

// Read File 

console.log(fs.readFileSync('text.txt',{encoding:'utf-8'}))