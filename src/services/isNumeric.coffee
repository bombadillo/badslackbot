isNumeric = (number) ->
  matches = number.match /\d+/g
  return matches != null

module.exports = isNumeric
