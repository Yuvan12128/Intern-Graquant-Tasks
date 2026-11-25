try {
    let result = 10 / 0;

    console.log(result);

} catch (error) {
    console.log("Error:", error.message);
}

try {
    console.log(name);
} catch (error) {
    console.log("Something went wrong!");
}


function checkAge(age) {

    if (age < 18) {
        throw new Error("You are not eligible");
    }

    console.log("You are eligible");
}

try {
    checkAge(18);
} catch (error) {
    console.log(error.message);
}

// const fs = require("fs");

// fs.readFile("abc.txt", "utf8", (err, data) => {

//     if (err) {
//         console.log("File Error:", err.message);
//         return;
//     }

//     console.log(data);
// });


function login(username) {

    return new Promise((resolve, reject) => {

        if (username === "Yuvan") {
            resolve("Login Successful");
        } else {
            reject(new Error("Invalid Username"));
        }

    });
}

login("Yuvan")
    .then((result) => {
        console.log(result);
    })
    .catch((error) => {
        console.log(error.message);
    });