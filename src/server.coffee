config = require 'config'
routes = require 'routes'
server = require 'server'

app = server.createServer()

# config
server.configServer app

# routes
routes app

# listen to port
server.listenServer app
