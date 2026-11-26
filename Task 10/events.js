const EventEmiiter = require('events')

const event = new EventEmiiter();

event.on("orderPlaced", () => {
    console.log("Restaurant notified");
});

event.on("orderPlaced", () => {
    console.log("Payment processed");
});

event.on("orderPlaced", () => {
    console.log("Delivery partner notified");
});

event.emit("orderPlaced");


event.emit("orderPlaced");



event.on('greet',()=>{
    console.log('hello there');
    
})

event.emit('greet')

// const EventEmitter = require('events');
// const emitter = new EventEmitter();

// // Always handle 'error' events
// emitter.on('error',(err)=>{

//     console.error('An error occurred : ',err.message);
    
// })

// console.log('Clean up listeners');

// emitter.emit('error',new Error('something went wrong'))

// const listener = () => console.log('Event occurred');
// emitter.on('event', listener);

// // Later, remove the listener when no longer needed
// emitter.off('event', listener); 