slack = require './slackClient'
directMessage = require './services/directMessage'
horribleNameGenerator = require './services/horribleNameGenerator'

annoyUser = (userName) ->
  console.log 'in annoy call'
  horrbileName = horribleNameGenerator.generate()
  message = "Hey you #{horrbileName}!"
  console.log message
  directMessage.sendMessageByUserName userName, message

exports = this
exports.annoyUser = annoyUser
