// function foodPreparation(callback) {

//     console.log("Food preparation started");

//     setTimeout(() => {
//         console.log("Food is ready");

//         callback("Food Ready");
//     }, 2000);
// }

// function notifyCustomer(message) {
//     console.log("Customer notified:", message);
// }

// foodPreparation(notifyCustomer);

function checkPayment() {

    return new Promise((resolve, reject) => {

        let paymentSuccess = false;

        if (paymentSuccess) {
            resolve("Payment Successful");
        } else {
            reject("Payment Failed");
        }

    });
}

checkPayment()
    .then((result) => {
        console.log(result);
    })
    .catch((error) => {
        console.log(error);
    });