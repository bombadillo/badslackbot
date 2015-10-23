slack = require '../slackClient'

sendMessageByUserName = (userName, message) ->
  user = slack.getUserByName userName
  dmOpened = slack.openDM user.id
  console.log 'user ID'
  console.log user.id
  console.log 'dmOpened'
  console.log dmOpened
  if dmOpened
    dm = slack.getDMByName userName
    console.log 'dm'
    console.log dm
    if dm
      channel = slack.getChannelGroupOrDMByID dm.id
      console.log 'channel'
      console.log channel
      channel.send message
      console.log "message #{message} sent to #{userName}"

exports = this
exports.sendMessageByUserName = sendMessageByUserName
