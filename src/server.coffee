config = require './config/config.js'
routes = require './utility/routes'
server = require './config/config.js'
app = server.createServer()

# config
server.configServer app

# routes
routes app

# listen to port
server.listenServer app
