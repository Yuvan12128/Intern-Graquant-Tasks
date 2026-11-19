const express = require('express')
const router = express.Router();
const User = require('../models/User')
//User Routes 
//Create User
router.post('/', async (req, res) => {
    const user = new User(req.body)
    const saved = await user.save()
    res.status(201).json(saved)
})

// Get All User
router.get('/', async (req, res) => {
    const users = await User.find();
    res.status(201).json(users);
})
// Get One User
router.get('/:id', async (req, res) => {
    //console.log( req.params.id);

    const user = await User.findById(req.params.id);
    res.status(201).json(user);
})
// Update User
router.put('/:id', async (req, res) => {
    //console.log( req.params.id);

    const user = await User.findByIdAndUpdate(req.params.id, req.body, { new: true });
    res.status(201).json(user);
})
// Delete User

router.delete('/:id', async (req, res) => {
    //console.log( req.params.id);

    await User.findByIdAndDelete(req.params.id);
    res.sendStatus(204);
})

module.exports = router;