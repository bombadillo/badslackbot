channel = require './channel'

getFromMessage = (message) ->
    split = message.text.split ' <@'
    if split.length < 2
      sendErrorMessage message
      return false
    return split[1].replace '>', ''

sendErrorMessage = (message) ->
  messageText = "I don't think you supplied the user name, muppet!"
  channel.sendMessageById message.channel, messageText

exports = this
exports.getFromMessage = getFromMessage
