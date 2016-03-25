slack = require './slackClient'
directMessage = require './directMessage'
horribleNameGenerator = require './horribleNameGenerator'
archiver = require './messageArchiver'

annoyUser = (userName) ->
  horrbileName = horribleNameGenerator.generate()
  message = "Hey you #{horrbileName}!"
  directMessage.sendMessageByUserName userName, message
  archiver.archiveToFlatFile message, userName

exports = this
exports.annoyUser = annoyUser
