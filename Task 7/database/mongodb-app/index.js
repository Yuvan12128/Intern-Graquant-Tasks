const express = require('express')

const db = require('./db')

const app = express()

const userRouter = require('./routes/users')
app.use(express.json())

app.use('/api/users', userRouter)

app.listen(3000, () => {
    console.log('Serve Listening to http://localhost:3000');

})