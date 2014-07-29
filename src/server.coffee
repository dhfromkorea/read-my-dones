# if needed
# config = require 'config'
server = require 'server'
express = require 'express'

app = express()

# run middleware
require('middleware')(app, express)

# listen to port
port = process.env.PORT or 3000
app.listen port
console.log 'listening on', port