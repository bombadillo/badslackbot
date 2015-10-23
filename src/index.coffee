slack = require './slackClient'
shouldIAnnoy = require './shouldIAnnoy'
annoy = require './annoy'
userToAnnoy = ''

server_port = process.env.YOUR_PORT || process.env.PORT || 80
server_host = process.env.YOUR_HOST || '0.0.0.0'
server.listen(server_port, server_host ->
  console.log('Listening on port %d', server_port)
)

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
