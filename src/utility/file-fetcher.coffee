Promise = require 'bluebird'
fs = require 'fs'
Dropbox = require 'dropbox'

# enable long trace
Promise.longStackTraces()

# hard-coded the access token that can only serve me
client = new Dropbox.Client
  key: 'bh0xse8rtqhf88x'
  secret: '5ckk81amd7h4lkk'
  token: 'ZT6TIJHZY3kAAAAAAAAUyEAWz0mcR5DIeb5-lsDgWY81WkNOjNbG1dBz5DlqgaOs'

module.exports.readFile = (path, callback) ->
  readFile = Promise.promisify(client.readFile).bind client
  readFile path
  .then (result) ->
    callback result
  .error (e) ->
    console.error 'unable to read file', e.message


# module.exports.getRevision = (callback) ->
#   cursor = {}
#   cursor.cusorTag = 'AAHG_Bk3trvebbkxZPxJz7r8NO4s53xEE47s94jIJ7VhYjCyrERvNYsgSWz1NWEwFrYSiMlBSNzL9dvKSz7jDv3wrnrsAbFjWo9DdzgPWRIAOsM1Te-SdJLhaoY2QNw8_xJdS7-lWNmO68MAqTBIHjjg'
#   client.pullChanges null, '/todo.txt', (err, data) ->
#     if err
#       throw err
#     callback data


module.exports.writeFile = (path, data, callback) ->
  callback = callback || (data) ->
    console.log 'successfully inserted data', data
  writeFile = Promise.promisify(fs.writeFile).bind fs
  writeFile path, data
  .then (result) ->
    console.log 'result', result
    callback result
  .error (e) ->
    console.error 'failed to write file', e.message
