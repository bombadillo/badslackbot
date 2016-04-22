userNameParser = require './slack/userNameParser'

shouldIAnnoyUser = (message) ->
  if message.text.match 'annoy'
    if userId = userNameParser.getFromMessage message
      return userId

  return false

exports = this
exports.shouldIAnnoyUser = shouldIAnnoyUser
