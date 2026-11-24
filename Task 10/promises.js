const promise = new Promise((resolve,reject)=>{
    let success = false;
    if (success) {
        resolve('Task is Completed')
    }else reject('Task failed')
})

promise.then((result)=>{
    console.log(result);
    
})
.catch((error)=>{
    console.log(error);
    
})