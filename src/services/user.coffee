slack = require '../slackClient'
isNumeric = require './isNumeric'

getUserName = (userId) ->
  user = slack.getUserByID userId

  if !user
    return false

  return user.name

exports = this
exports.getUserName = getUserName
