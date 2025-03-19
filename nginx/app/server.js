const express = require('express');
const path = require('path');
const app = express();
const port = 5000;

const appName = process.env.APP_NAME

app.use('/images', express.static(path.join(__dirname, 'images')));

app.use('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
    console.log(`Request served by ${appName}`);
});

app.listen(port, () => {
    console.log(`${appName} is listening on port ${port}`);
    // you can reach the app at http://localhost:5000
    console.log(`http://localhost:${port}`);
});
