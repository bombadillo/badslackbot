slack = require '../slackClient'

sendMessageById = (id, message) ->
  channel = slack.getChannelGroupOrDMByID id
  channel.send message

exports = this
exports.sendMessageById = sendMessageById
