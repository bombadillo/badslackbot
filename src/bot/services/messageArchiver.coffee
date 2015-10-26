fs = require 'fs'
config = require '../../common/config'
os = require 'os'

archiveToFlatFile = (message, user) ->
  messageObject = message: message, user: user
  messageString = JSON.stringify(messageObject) + ',' + os.EOL
  fs.appendFile config.logFile, messageString, errorHandler

errorHandler = (err) ->
  if err
    console.log err

exports = this
exports.archiveToFlatFile = archiveToFlatFile
