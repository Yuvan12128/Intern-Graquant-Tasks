// console.log('Start');

// setTimeout(() => {
//   console.log('setTimeout callback');
// }, 0);

// const immediatedId=setImmediate(() => {
//   console.log('setImmediate callback');
// });

// process.nextTick(() => {
//   console.log('nextTick callback');
// });

// clearImmediate(immediatedId)
// console.log('End'); 



const { setTimeout, setInterval, setImmediate } = require('timers');

console.log('Starting timers...');

// Execute once after delay
setTimeout(() => {
  console.log('This runs after 1 second');
}, 1000);

// Execute repeatedly at interval
let counter = 0;
const interval = setInterval(() => {
  counter++;
  console.log(`Interval tick ${counter}`);
  if (counter >= 3) clearInterval(interval);
}, 1000);

// Execute in the next event loop iteration
setImmediate(() => {
  console.log('This runs in the next iteration of the event loop');
});

console.log('Timers scheduled'); 