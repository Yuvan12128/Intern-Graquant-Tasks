console.log('Start')

setTimeout(() => {
    console.log('hello yuvan 3 seconds');

}, 3000);

let count = 1;

const timer = setInterval(() => {
    console.log('count', count);

    if (count == 10) {
        clearInterval(timer)
        console.log('stop timer');

    }

    count++;

}, 1000);

const time =setTimeout(() => {
    console.log('hello');
    
}, 5000);

clearTimeout(time);

console.log(' Timer Cancelled')