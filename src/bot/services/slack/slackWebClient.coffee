WebClient  = require('@slack/client').WebClient
MemoryDataStore = require('@slack/client').MemoryDataStore
config = require '../../../common/config'

slackToken = config.botApiToken

options =
  autoReconnect: true
  autoMark: true
  dataStore: new MemoryDataStore()

web = new WebClient slackToken, options

module.exports = web
