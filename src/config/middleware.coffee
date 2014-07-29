bodyParser = require 'body-parser'
routes = require 'routes'
mainApp = require 'app'

module.exports = (app, express) ->
  app.use bodyParser.urlencoded(extended: true)
  app.use bodyParser.json()
  # register routes
  routes(app)
  # fetch and save the done file
  # parse the data into JSON
  mainApp()

