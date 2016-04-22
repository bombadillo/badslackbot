colors = require 'colors'
config = require '../config'
fileWriter = require './fileWriter'
dateFormat = require 'dateformat'

colors.setTheme
  silly: 'rainbow',
  input: 'grey',
  verbose: 'cyan',
  prompt: 'grey',
  info: 'green',
  data: 'grey',
  help: 'cyan',
  warn: 'yellow',
  debug: 'rainbow',
  error: 'red'

info = (message) ->
  console.log colors.info(message)
  writeToFile message, 'info'

error = (message) ->
  console.log colors.error(message)
  writeToFile message, 'error'

debug = (message) ->
  console.log colors.debug(message)
  writeToFile message, 'debug'

writeToFile = (message, level) ->
  date = dateFormat(new Date(), 'dd/mm/yyyy hh:MM:ss')
  logString = "#{date} | #{level} | #{message} \n"
  fileWriter.appendFile config.logFile, logString

exports = this
this.info = info
this.error = error
this.debug = debug
