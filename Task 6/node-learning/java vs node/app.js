const fs = require('fs');

console.log('Program started');
console.log('Program started');
console.log('Program started');
console.log('Program started');
console.log('Program started');



function job() {
    setTimeout(() => {
        fs.readFile('data1.txt', 'utf-8', (err, data) => {
            console.log('1. File Reading Completed');
            console.log(data);
        })
    }, 5000);

}
function job2() {
    setTimeout(() => {
        fs.readFile('data2.txt', 'utf-8', (err, data) => {
            console.log('2. File Reading Completed');
            console.log(data);
        })
    }, 2000);

}
function job3() {
    setTimeout(() => {
        fs.readFile('data3.txt', 'utf-8', (err, data) => {
            console.log('3. File Reading Completed');
            console.log(data);
        })
    }, 1000);

}

console.log('Program continues');

job();
job2();
job3();





