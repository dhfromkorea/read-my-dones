config = require 'config'
plivo = require 'plivo'
makeScript = (messageBody) ->
  # concatenate into a well-strutured single script

exports.callUser = (req, res) ->
  script = makeScript(req.body) or ""
  xmlBaseUrl = "http://plivo-idonethis.herokuapp.com/xml-response"
  params =
    from: req.body.src or 14157588395
    to: req.body.src or 14155345337
    answer_url: xmlBaseUrl + "?script=" + script
  # should figure out a better way to pass the script
  p = plivo.RestAPI config.plivo
  p.make_call params, (status, response) ->
    res.send status, responses

exports.readScript = (req, res) ->
  r = new plivo.Response()
  message = req.body.script or 'hello'
  options = loop: 2
  r.addSpeak message, options
  res.send 200, r.toXML()
