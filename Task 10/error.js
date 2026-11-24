// Node js errors

// Error in Node js are probles that occur during the execution of a Node.js applcation.  
// These errors can occur due to programming mistakes, invalid InputDeviceInfo, missing FileSystem, network issues or system-related problems.

//Java Script Error example 
const a = 12;
const b = a+c;

console.log(c); // ReferenceError: c is not defined


const fs = require('fs')

const data =fs.readFileSync('messing.txt') // Error: ENOENT: no such file or directory, open 'messing.txt'

console.log(data);

class ValidationError extends Error{
    constructor(msg){

        super(msg)

        this.name='ValidationError'
    }
}
const error = new ValidationError('Invalied user Input')

console.log(error.name);
console.log(error.message);


const assert = require('node:assert')
const age = '20';
assert.strictEqual(age,20)
console.log('age is valid');
