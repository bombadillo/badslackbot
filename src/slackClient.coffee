Slack = require 'slack-client'

slackToken = 'xoxb-12762509828-bgL0ZsbfYIHKcbjM13EcXcH9'

autoReconnect = true
autoMark = true

slack = new Slack(slackToken, autoReconnect, autoMark)

module.exports = slack
