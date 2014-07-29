fileFetcher = require 'file-fetcher'
dataParser = require 'parser'

module.exports = () ->
  donesDropboxPath = 'todo/done.txt'
  fileFetcher.readFile donesDropboxPath, (data) ->
    donesLocalPath = process.env.dones_path || './public/app/dones.txt'
    listOfDones = data[0]
    fileFetcher.writeFile donesLocalPath, listOfDones

  # done data parser
  inputPath = process.env.dones_path || './public/app/dones.txt'
  outputPath = './public/app/dones.js'
  dataParser.parseDones inputPath, outputPath, (result)->
    console.log result.length, 'items were processed'