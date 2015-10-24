convert = (data) ->
  data = "[#{data}]"
  return JSON.parse data

exports = this
exports.convert = convert
