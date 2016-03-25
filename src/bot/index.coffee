slack = require './services/slackClient'
shouldIAnnoy = require './services/shouldIAnnoy'
annoy = require './services/annoy'
log = require '../common/services/log'

start = ->
  slack.on 'open', ->
    log.info "Connected to #{slack.team.name} as @#{slack.self.name}"

  slack.on 'message', (message) ->
    shouldIAnnoyCurrentUser = shouldIAnnoy.shouldIAnnoyUser message
    if shouldIAnnoyCurrentUser
      userToAnnoy = shouldIAnnoyCurrentUser
      annoy.annoyUser userToAnnoy

  slack.on 'error', (err) ->
    log.error "Error", err

  slack.login()

exports = this
exports.start = start
