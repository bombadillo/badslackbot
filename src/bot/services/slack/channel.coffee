slack = require '../slack/slackClient'

sendMessageById = (id, message) ->
  slack.sendMessage message, id

exports = this
exports.sendMessageById = sendMessageById