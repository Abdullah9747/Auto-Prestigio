const express = require('express');
const app = express();
const bodyParser = require('body-parser');

app.use(bodyParser.json());
app.post('/', (req, res) => {
    const name1 = req.body.name;
    res.send(`Hello ${name1}!`);
});


app.listen(8000, () => {
    console.log(`Server is running on http://localhost:${8000}`);
});