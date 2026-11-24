// 1. Callbacks (traditional)

function fetchData(){
    setTimeout(()=>{
        Callbacks('Data recevied');
    },1000)
}

// 2. Promises

const fetchDataPromise = () =>{
    return new Promise((resolve)=>{

        setTimeout(()=>resolve('Promise resolved!'),1000);
    });
}

// 3. Async/ Await 

async function getData(){
    const result = await fetchDataPromise();

    console.log(result)
}

getData();
