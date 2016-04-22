fs = require 'fs'
config = require '../../common/config'
os = require 'os'
fileWriter = require '../../common/services/fileWriter'
userService = require './slack/user'

archiveToFlatFile = (message, userId) ->
  userName = userService.getUserName userId
  messageObject = message: message, user: userName
  messageString = JSON.stringify(messageObject) + ',' + os.EOL
  fileWriter.appendFile config.annoyOutputFile, messageString

exports = this
exports.archiveToFlatFile = archiveToFlatFile
