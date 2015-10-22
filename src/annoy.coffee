slack = require './slackClient'
directMessage = require './services/directMessage'
horribleNameGenerator = require './services/horribleNameGenerator'

annoyUser = (userName) ->
  horrbileName = horribleNameGenerator.generate()
  message = "Hey you #{horrbileName}!"
  directMessage.sendMessageByUserName userName, message

exports = this
exports.annoyUser = annoyUser
