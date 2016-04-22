slack = require './slack/slackClient'
directMessage = require './directMessage/sender'
horribleNameGenerator = require './horribleNameGenerator'
archiver = require './messageArchiver'

annoyUser = (userName) ->
  horrbileName = horribleNameGenerator.generate()
  message = "Hey you #{horrbileName}!"
  directMessage.sendMessageByUserName userName, message
  archiver.archiveToFlatFile message, userName

exports = this
exports.annoyUser = annoyUser
