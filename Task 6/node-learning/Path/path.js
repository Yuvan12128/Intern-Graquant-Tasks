const path =require('path');

const filePath='/home/u1/Desktop/node/Intern-Graquant-Tasks/Task 6/node-learning/asyncFs/demo.txt, app.js'

console.log('Base Name :',path.basename(filePath));

console.log('Directory Name :',path.dirname(filePath));

console.log('Extendsion Name :',path.extname(filePath)) 


console.log('Joined Path :',path.join(__dirname,'demo','text.txt'))