log = require '../../../common/services/log'
dmOpener = require './dmOpener'
channel = require '../slack/channel'

sendMessageByUserName = (userName, message) ->
  dm = dmOpener.open(userName).then (dm) ->
    if dm
      channel.sendMessageById dm.id, message

exports = this
exports.sendMessageByUserName = sendMessageByUserName
