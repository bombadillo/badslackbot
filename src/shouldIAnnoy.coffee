slack = require './slackClient'
userService = require './services/user'
channel = require './services/channel'
userNameRetriever = require './services/userNameRetriever'

shouldIAnnoyUser = (message) ->
  if message.text.match 'annoy'
    return getUserId(message)
  else
    return false

getUserId = (message) ->
  if userId = userNameRetriever.getFromMessage message
    userName = userService.getUserName userId
    whoWeGoingToAnnoy message, userName
    return userName

whoWeGoingToAnnoy = (message, userName) ->
  if userName
    messageText = "I'm off to annoy #{userName}"
  else
    messageText = "I can't find the blighter."    
  channel.sendMessageById message.channel, messageText

exports = this
exports.shouldIAnnoyUser = shouldIAnnoyUser
