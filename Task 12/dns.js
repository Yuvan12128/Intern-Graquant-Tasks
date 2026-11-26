// const dns = require('dns');

// // Look up a domain name
// dns.lookup('example.com', (err, address, family) => {
//   if (err) {
//     console.error('Lookup error:', err);
//     return;
//   }
//   console.log(`IP address: ${address}`);
//   console.log(`IP version: IPv${family}`);
// }); 


// const dns = require('dns').promises;

// // Promise-based API
// async function lookupExample() {
//   try {
//     const result = await dns.lookup('www.google.com');
//     console.log('IP address:', result.address);
//     console.log('IP version: IPv' + result.family);
//   } catch (err) {
//     console.error('Lookup failed:', err);
//   }
// }

// lookupExample(); 


const dns = require('dns');

// Get all IPv4 addresses
dns.resolve4('www.google.com', (err, addresses) => {
  if (err) throw err;

  console.log('IPv4 addresses:');
  addresses.forEach(address => {
    console.log(` ${address}`);
  });

// Perform a reverse lookup on the first IP
  dns.reverse(addresses[0], (err, hostnames) => {
    if (err) throw err;

    console.log(`Reverse lookup for ${addresses[0]}:`);
    hostnames.forEach(hostname => {
      console.log(` ${hostname}`);
    });
  });
});

         