const express = require('express');
const cors = require('cors'); 
const app = express();
require('dotenv').config();


app.use(cors()); 

const port = process.env.PORT;
const apiKey = process.env.API_KEY;

app.get('/', (req, res) => {
  res.send(`This is api key: ---------- 4:00 PM : ${apiKey}`);
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
