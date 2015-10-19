slack = require '../slackClient'

sendMessageByUserName = (userName, message) ->
  dm = slack.getDMByName userName
  channel = slack.getChannelGroupOrDMByID dm.id
  channel.send message

exports = this
exports.sendMessageByUserName = sendMessageByUserName
