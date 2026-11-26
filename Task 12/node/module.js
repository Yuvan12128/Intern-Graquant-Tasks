const fs = require('fs')
// Read File
fs.readFile('students.txt','utf8',(err,data)=>{
    if (err) {
        console.log(err);
        return;
    }
    console.log(data);
    
})

// Write File

fs.writeFile('students.txt','Yuvan - Present',(err)=>{
    if (err) throw err;
    console.log('File Created');
    
})

// Append File
fs.appendFile(
    "students.txt",
    "\nArun - Present",
    (err) => {
        if (err) throw err;

        console.log("Attendance added");
    }
);


//  File Rename
fs.rename(
    "students.txt",
    "attendance-report.txt",
    (err) => {
        if (err) throw err;

        console.log("Renamed");
    }
);

//Delete File

fs.unlink("old.txt", (err) => {
    if (err) throw err;

    console.log("File deleted");
});


//Floder Creation

fs.mkdir("uploads", (err) => {
    if (err) throw err;

    console.log("Folder created");
});


// Floder List

fs.readdir("uploads", (err, files) => {
    if (err) throw err;

    console.log(files);
});

// Get File Information 

fs.stat("attendance.txt", (err, stats) => {
    if (err) throw err;

    console.log("Size:", stats.size);
    console.log("Is File:", stats.isFile());
});