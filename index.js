const express = require('express')
const app = express()

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(3000, () => {
  console.log(`Run at https://localhost:3000!`)
})