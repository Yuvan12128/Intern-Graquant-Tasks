const { URL } = require('url');

// Using the WHATWG URL API (recommended for new code)
const myURL = new URL('https://example.org:8080/p/a/t/h?query=string#hash');
console.log(myURL.hostname); // 'example.org'
console.log(myURL.pathname); // '/p/a/t/h'
console.log(myURL.searchParams.get('query')); // 'string'

// Using the legacy API
const parsedUrl = require('url').parse('https://example.org:8080/p/a/t/h?query=string#hash');
console.log(parsedUrl.host); // 'example.org:8080'
console.log(parsedUrl.query); // 'query=string' 