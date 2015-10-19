slack = require './slackClient'
userService = require './services/user'
channel = require './services/channel'

shouldIAnnoyUser = (message) ->
  if message.text.match 'annoy'
    userId = getUserNameFromMessage message
    if userId
      userName = userService.getUserName message.user
      whoWeGoingToAnnoy message, userName
      return userName
    else
      return false
  else
    return false

getUserNameFromMessage = (message) ->
  split = message.text.split ' <@'
  if split.length < 2
    reply message, "I don't think you supplied the user name, muppet!"
  return split[1]

reply = (message, messageText) ->
  channel.sendMessageById message.channel, messageText

whoWeGoingToAnnoy = (message, userName) ->
  messageText = "I'm off to annoy #{userName}"
  reply message, messageText

exports = this
exports.shouldIAnnoyUser = shouldIAnnoyUser
