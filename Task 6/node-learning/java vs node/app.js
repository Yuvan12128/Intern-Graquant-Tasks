const fs = require('fs');

console.log('Program started');


function job() {
    fs.readFile('data1.txt', 'utf-8', (err, data) => {
        console.log('1. File Reading Completed');
        console.log(data);
    })
}
function job2() {
    fs.readFile('data2.txt', 'utf-8', (err, data) => {
        console.log('2. File Reading Completed');
        console.log(data);
    })
}
function job3() {
    fs.readFile('data3.txt', 'utf-8', (err, data) => {
        console.log('3. File Reading Completed');
        console.log(data);
    })
}

console.log('Program continues');


setTimeout(() => {
    job();
}, 2000);

setTimeout(() => {
    job2();
}, 1000);
setTimeout(() => {
    job3();
}, 4000);
