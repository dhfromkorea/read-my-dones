// Generated by CoffeeScript 1.7.1
(function() {
  var Dropbox, Promise, client, fs;

  Promise = require('bluebird');

  fs = require('fs');

  Dropbox = require('dropbox');

  Promise.longStackTraces();

  client = new Dropbox.Client({
    key: 'bh0xse8rtqhf88x',
    secret: '5ckk81amd7h4lkk',
    token: 'ZT6TIJHZY3kAAAAAAAAUyEAWz0mcR5DIeb5-lsDgWY81WkNOjNbG1dBz5DlqgaOs'
  });

  module.exports.readFile = function(path, callback) {
    var readFile;
    readFile = Promise.promisify(client.readFile).bind(client);
    return readFile(path).then(function(result) {
      return callback(result);
    }).error(function(e) {
      return console.error('unable to read file', e.message);
    });
  };

  module.exports.writeFile = function(path, data, callback) {
    var writeFile;
    callback = callback || function(data) {
      return console.log('successfully inserted data', data);
    };
    writeFile = Promise.promisify(fs.writeFile).bind(fs);
    return writeFile(path, data).then(function(result) {
      console.log('result', result);
      return callback(result);
    }).error(function(e) {
      return console.error('failed to write file', e.message);
    });
  };

}).call(this);
