fs = require 'fs'
config = require '../config'
os = require 'os'

info = (message) ->
  messageObject = message: "#{message}"
  messageString = JSON.stringify(messageObject) + os.EOL
  fs.appendFile config.logFile, messageString, errorHandler

errorHandler = (err) ->
  if err
    console.log err

exports = this
exports.info = info
