const name = 'dhoni'

console.log("Raja");

console.error('Yuvan Shankar');

console.warn(`don't mess with me,${name}`)

console.info('This is a sample info message !')

console.info('sample info message with args : %6', 39)

console.table(
    [
        { q: 3, r: 4 },
        { q: 3, r: 7, s: 'y' }
    ],
    ['q', 'r']
)

function sumCount() {
    let sum = 0;
    for (let num = 1; num < 100000; num++) {
        sum += num;
        console.log(sum);
        
        return sum;
    }
}



console.time('timetaken');

sumCount();

console.timeEnd('timetaken')