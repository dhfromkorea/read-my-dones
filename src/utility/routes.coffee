phone = require './call'

module.exports = (app) ->
  app.get '/', (req, res) ->
    res.send 200, 'hello world'

  app.post '/call', (req, res) ->
    phone.callUser req, res

  app.post '/xml-response', (req, res) ->
    phone.readScript req, res
