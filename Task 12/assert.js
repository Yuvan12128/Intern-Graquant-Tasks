const assert = require('assert')

assert.strictEqual(1,1)

try{
    assert.strictEqual('1',1);
    assert.strictEqual(true,1)
}catch(err){
    console.log(`Error ${err.message}`);
    
}
console.log('1'===1);
