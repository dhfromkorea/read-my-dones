dataParser = require 'data-file-parser'

regex = "^x\\s(\\d{4}-\\d{2}-\\d{2}\\s)?(\\d{4}-\\d{2}-\\d{2}\\s)?([^@+\\n]+)(\\+[^@\\n]+)?(\\@[^+\\s\\n]+)?[^\\n\\s]?"

params =
  in: process.env.dones_path || __dirname + 'public/app/dones.txt'
  out: __dirname + 'public/app/dones.js'
  var: 'result'
  regex: new RegExp(regex, "igm")
  as: 'completedAt|createdAt|item|project|context'

onParse = (parsedResult) ->
  console.log 'parsing done', parsedResult


dataParser.parse(params).then(onParse)



