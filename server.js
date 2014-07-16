var express = require('express');
var config = require('./config/config.js');
var routes = require('./utility/routes');
var app = express();
var bodyParser = require('body-parser');
var port = process.env.PORT || 3000;

// config
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());

// routes
routes(app);

app.listen(port);
console.log('listening on', port);
