slack = require '../slackClient'
isNumeric = require './isNumeric'

getUserName = (userId) ->
  if !isNumeric userId
    return userId
  user = slack.getUserByID userId
  return user.name

exports = this
exports.getUserName = getUserName
