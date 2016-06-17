slack = require './slack/slackClient'
directMessage = require './directMessage/sender'
archiver = require './messageArchiver'

mooUser = (userName) ->
  message = "Moo"
  directMessage.sendMessageByUserName userName, message
  archiver.archiveToFlatFile message, userName

exports = this
exports.mooUser = mooUser
