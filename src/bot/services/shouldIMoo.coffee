userNameParser = require './slack/userNameParser'

shouldIMooUser = (message) ->
  if message.text.match 'moo'
    if userId = userNameParser.getFromMessage message
      return userId

  return false

exports = this
exports.shouldIMooUser = shouldIMooUser
