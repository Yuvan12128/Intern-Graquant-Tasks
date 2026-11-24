global.message = 'This is a global variable';

console.log(message);

console.log(globalThis == global);

globalThis.message = 'welcome to the Node.js'
console.log(globalThis.message)

console.log(process.pid);
console.log(process.version);

const buffer = Buffer.from('Hello Yuvan');

console.log(buffer);

console.log('Example of Ecah Function ')

setTimeout(() => {
    console.log('setTimeout()')
}, 0)

const interval = setInterval(() => {
    console.log("setInterval");
    clearInterval(interval)

}, 1000)

setImmediate(() => {
    console.log('setImmediate()');
})

queueMicrotask(() => {
    console.log('queueMicrotak()');

})

console.log('end');
