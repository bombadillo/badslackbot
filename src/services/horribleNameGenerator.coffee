names = [
  "jobby gobler"
  "kitten cooker"
  "douche knuckle"
  "satchel man"
  "heinous chicken puncher"
  "bum-licking smeghead"
  "hog humper"
  "full-gorged codpiece"
  " muddy-mottled bag of guts"
  "swag-bellied punk"
  "long-tongued plebian"
  "shard-borne drunkard"
]

generate = ->
  randomIndex = getRandomInt 0, names.length - 1
  return names[randomIndex]

getRandomInt = (min, max) ->
  return Math.floor(Math.random() * (max - min + 1)) + min


exports = this
exports.generate = generate
