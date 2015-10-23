Slack = require 'slack-client'
config = require './config'

slackToken = config.botApiToken
autoReconnect = true
autoMark = true

slack = new Slack(slackToken, autoReconnect, autoMark)

module.exports = slack
