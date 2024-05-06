const express = require('express');
const bodyParser = require('body-parser');
const cookieParser = require('cookie-parser');
const app = express();
const port = 3000;

const ADMIN_TOKEN = 'admin';

app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());

app.post('/login', (req, res) => {
  const { username, password } = req.body;

  if (username === 'admin' && password === 'password') {
    res.cookie('session', ADMIN_TOKEN, { maxAge: 900000, httpOnly: true });
    res.send('Logged in!');
  }
});

app.post('/comment', (req, res) => {
  if (req.cookies.session !== ADMIN_TOKEN) {
    res.send('Unauthorized');
  }

  res.send('Comment posted!');
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
