slack = require './services/slack/slackClient'
shouldIAnnoy = require './services/shouldIAnnoy'
annoy = require './services/annoy'
log = require '../common/services/log'
broadcastNextVictim = require './services/broadcastNextVictim'

start = ->
  slack.on 'open', ->
    log.info "Connected to slack"

  slack.on 'message', (message) ->
    iShouldIAnnoyUser = shouldIAnnoy.shouldIAnnoyUser message
    if iShouldIAnnoyUser
      userToAnnoy = iShouldIAnnoyUser
      broadcastNextVictim message, userToAnnoy
      annoy.annoyUser userToAnnoy

  slack.on 'error', (err) ->
    log.error "Error", err

  slack.login()

exports = this
exports.start = start
