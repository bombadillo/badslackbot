slack = require './slackClient'
shouldIAnnoy = require './shouldIAnnoy'
annoy = require './annoy'
userToAnnoy = ''
server = require './services/server'

server.start()

slack.on 'open', ->
  console.log "Connected to #{slack.team.name} as @#{slack.self.name}"

slack.on 'message', (message) ->
  console.log 'inbound message'
  shouldIAnnoyCurrentUser = shouldIAnnoy.shouldIAnnoyUser message
  if shouldIAnnoyCurrentUser
    userToAnnoy = shouldIAnnoyCurrentUser
    console.log 'before annoy call'
    annoy.annoyUser userToAnnoy

slack.on 'error', (err) ->
  console.error "Error", err

slack.login()
