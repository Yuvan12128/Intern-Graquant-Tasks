// const fs = require('fs')

// const readableStram = fs.createReadStream('input.txt','utf-8')

// const writableStram = fs.createWriteStream('output.txt')

// readableStram.pipe(writableStram);

// writableStram.on('finish',()=>{
//     console.log('File copy completed ! ');

// })

// readableStram.on('error',(err)=>{
//     console.log('Error Reading File : ',err);

// })

// writableStram.on('error', (err) => {
//   console.error('Error writing file:', err);
// }); 

const fs = require('fs');

// Paused mode example
const readableStream = fs.createReadStream('input.txt', {
    encoding: 'utf8',
    highWaterMark: 64 * 1024 // 64KB chunks
});

// Manually consume the stream using read()
readableStream.on('readable', () => {
    let chunk;
    while (null !== (chunk = readableStream.read())) {
        console.log(`Read ${chunk.length} bytes of data.`);
        console.log(chunk);


    }
});
const writableStram = fs.createWriteStream('output.txt')

readableStream.pipe(writableStram)
readableStream.on('end', () => {
    console.log('No more data to read.');
}); 