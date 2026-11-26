const EventEmitter = require('events')

const emitter = new EventEmitter();

emitter.on('login',(username)=>{
    console.log('Logged in',username);
    
})

emitter.emit('login','Yuvan')
emitter.emit('login','Yuvan')


emitter.once('Welcome',()=>{
    console.log('once Welcome !');
    
})

emitter.emit('Welcome');
emitter.emit('Welcome');

emitter.off('Welcome')