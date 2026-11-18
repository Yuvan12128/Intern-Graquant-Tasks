const os =require('os')

console.log('Platform',os.platform())

console.log('Architecture',os.arch());

console.log(os.availableParallelism());

console.log('Total Memory', Math.round(os.totalmem()/1024 **3),"GB");

console.log('Free Memory ', Math.round(os.freemem()/1024 **3),"GB");

console.log('Home Directory ', os.homedir())

console.log('Home Directory Name', os.hostname())

console.log('CPU coures ',os.cpus().length);

console.log('OS Uptime ', os.uptime());


