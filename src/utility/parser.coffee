dataParser = require 'data-file-parser'

module.exports.parseDones = (inputPath, outputPath, callback) ->
  regex = "^x\\s(\\d{4}-\\d{2}-\\d{2}\\s)?(\\d{4}-\\d{2}-\\d{2}\\s)?([^@+\\n]+)(\\+[^@\\n]+)?(\\@[^+\\s\\n]+)?[^\\n\\s]?"

  params =
    in: inputPath
    out: outputPath
    var: 'result'
    regex: new RegExp(regex, "igm")
    as: 'completedAt|createdAt|item|project|context'

  dataParser
  .parse params
  .then (result) ->
    callback result
  .catch (e) ->
    console.err 'parse failed', e.message
