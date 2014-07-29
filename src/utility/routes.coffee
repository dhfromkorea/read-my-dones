phone = require 'call'
revision = require 'polling'

module.exports = (app) ->
  app.get '/', (req, res) ->
    res.send 200, 'hello world'

  app.get '/revision', (req, res) ->
    revision.getRevision (data) ->
      res.send 201, data

  app.get '/todo', (req, res) ->
    revision.getFile (data) ->
      res.send 201, data

  app.post '/call', (req, res) ->
    phone.callUser req, res

  app.post '/xml-response', (req, res) ->
    phone.readScript req, res
