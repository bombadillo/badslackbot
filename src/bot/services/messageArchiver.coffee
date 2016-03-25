fs = require 'fs'
config = require '../../common/config'
os = require 'os'
fileWriter = require '../../common/services/fileWriter'

archiveToFlatFile = (message, user) ->
  messageObject = message: message, user: user
  messageString = JSON.stringify(messageObject) + ',' + os.EOL
  fileWriter.appendFile config.annoyOutputFile, messageString

exports = this
exports.archiveToFlatFile = archiveToFlatFile
