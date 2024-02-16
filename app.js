const express = require('express')
const app = express()
const port = 3000
const calculate = require('./calculate')


app.get('/', (req, res) => {
  res.send("Sum = "+calculate.sum(1,3));
})

app.get('/auth', (req, res) => {
  res.send('user logged in')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
