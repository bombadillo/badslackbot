slack = require './slackClient'
userService = require './services/user'
directMessage = require './services/directMessage'
horribleNameGenerator = require './services/horribleNameGenerator'

annoyUser = (userId) ->
  userName = userService.getUserName userId
  horrbileName = horribleNameGenerator.generate()
  message = "Hey you #{horrbileName}!"

  directMessage.sendMessageByUserName userName, message
  console.log "message #{message} sent to #{userName}"

exports = this
exports.annoyUser = annoyUser
