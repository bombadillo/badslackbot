channel = require './slack/channel'
userService = require './slack/user'

module.exports = (message, userId) ->
  userName = userService.getUserName userId
  if userName
    messageText = "I'm off to annoy @#{userName}"
  else
    messageText = "I can't find the blighter."
  channel.sendMessageById message.channel, messageText