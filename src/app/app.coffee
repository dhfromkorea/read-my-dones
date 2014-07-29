fileFetcher = require '../utility/file-fetcher'


donesDropboxPath = 'todo/done.txt'
fileFetcher.readFile donesDropboxPath, (data) ->
  donesLocalPath = process.env.dones_path || './dones.txt'
  listOfDones = data[0]
  fileFetcher.writeFile donesLocalPath, listOfDones
