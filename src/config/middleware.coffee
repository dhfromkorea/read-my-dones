bodyParser = require 'body-parser'
express = require 'express'

exports.createServer = () ->
  express()

exports.configServer = (app) ->
  app.use bodyParser.urlencoded(extended: true)
  app.use bodyParser.json()

exports.listenServer = (app) ->
  port = process.env.PORT or 3000
  app.listen port
  console.log 'listening on', port
