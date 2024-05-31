const express = require('express');
const app = express();
const port = 3000;

app.get('/token', (req, res) => {
  res.cookie('token', 'this_is_your_token', {
    maxAge: 900000,
    httpOnly: true,
  });
});

app.get('/test', (req, res) => {
  res.send('ok');
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
