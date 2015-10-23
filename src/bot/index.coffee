slack = require './slackClient'
shouldIAnnoy = require './shouldIAnnoy'
annoy = require './annoy'
userToAnnoy = ''

start = ->
  slack.on 'open', ->
    console.log "Connected to #{slack.team.name} as @#{slack.self.name}"

  slack.on 'message', (message) ->
    shouldIAnnoyCurrentUser = shouldIAnnoy.shouldIAnnoyUser message
    if shouldIAnnoyCurrentUser
      userToAnnoy = shouldIAnnoyCurrentUser
      annoy.annoyUser userToAnnoy

  slack.on 'error', (err) ->
    console.error "Error", err

  slack.login()

exports = this
exports.start = start
