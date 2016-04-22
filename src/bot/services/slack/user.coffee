slack = require '../slack/slackClient'

getUserName = (userId) ->
  user = slack.dataStore.users[userId]
  if !user
    return false
  else
    return user.name

exports = this
exports.getUserName = getUserName
