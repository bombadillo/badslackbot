slack = require './slackClient'
directMessage = require './services/directMessage'
horribleNameGenerator = require './services/horribleNameGenerator'
archiver = require './services/messageArchiver'

annoyUser = (userName) ->
  horrbileName = horribleNameGenerator.generate()
  message = "Hey you #{horrbileName}!"
  directMessage.sendMessageByUserName userName, message
  archiver.archiveToFlatFile message, userName

exports = this
exports.annoyUser = annoyUser
