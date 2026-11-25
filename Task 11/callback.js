function foodPreparation() {
    console.log("Food Preparation Start .... ");
    setTimeout(() => {
        console.log('Food Ready ! ');
        netifyCustomer()
        done()
    }, 4000);
}

function netifyCustomer() {
    console.log('customer notified');
    
}

function done() {
    console.log('Done');
    
}

foodPreparation()