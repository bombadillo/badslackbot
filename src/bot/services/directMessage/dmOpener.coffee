q = require 'q'
slackWebClient = require '../slack/slackWebClient'
log = require '../../../common/services/log'

open = (userId) ->
  deferred = q.defer()
  slackWebClient.im.open userId, (err, resp) ->
    if err
      log.error 'Error when communicating with slack web client'
      deferred.reject()
    else
      log.info 'Response from slackWebClient received'
      deferred.resolve resp.channel
  return deferred.promise

exports = this
this.open = open