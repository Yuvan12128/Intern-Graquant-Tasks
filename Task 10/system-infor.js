const os = require('os')

console.log('===== System Information =====');

console.log('os Type :', os.type());
console.log('Platform :', os.platform());
console.log('Architecture :', os.arch());
console.log('Hostname :', os.hostname());
console.log('Home Dir :', os.homedir());

console.log('CPU Information');

const cpus = os.cpus();

console.log('CPU Model ', cpus[0].model);
console.log('CPU Model ', cpus.length);
console.log('CPU Model ', cpus[0].speed, 'MHz');

console.log('Memory Information');

const totalRAM = os.totalmem() / (1024 ** 3);
const freeRAM = os.freemem() / (1024 ** 3);
const usedRAM = totalRAM - freeRAM;

console.log('total RAM ', totalRAM.toFixed(0), 'GB');
console.log('Used RAM ', usedRAM.toFixed(2), 'GB');
console.log('Free RAM ', freeRAM.toFixed(2), 'GB');


console.log('System Uptime');

const uptimeHourse = os.uptime() / 3600;

console.log('uptime ', uptimeHourse.toFixed(2), 'hourse');

console.log('Network Information');

console.log(os.networkInterfaces());








