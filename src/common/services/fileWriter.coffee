fs = require 'fs'

appendFile = (file, stringToWrite) ->
  fs.appendFile file, stringToWrite, (err) ->
    if err
      return console.log err

exports = this
this.appendFile = appendFile
