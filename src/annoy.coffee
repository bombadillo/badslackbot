slack = require './slackClient'
directMessage = require './services/directMessage'
horribleNameGenerator = require './services/horribleNameGenerator'
logger = require './services/logger'

annoyUser = (userName) ->
  horrbileName = horribleNameGenerator.generate()
  message = "Hey you #{horrbileName}!"
  directMessage.sendMessageByUserName userName, message
  logger.info "message #{message} sent to #{userName}"

exports = this
exports.annoyUser = annoyUser
