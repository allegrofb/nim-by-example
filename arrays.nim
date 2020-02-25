type
  ThreeStringAddress = array[3, string]
let names: ThreeStringAddress = ["Jasmine", "Ktisztina", "Kristof"]
let addresses: ThreeStringAddress = ["101 Betburweg", "66 Bellion Drive", "194 Laarderweg"]

proc zip[I, T](a, b: array[I, T]):
               array[I, tuple[a, b: T]] =
  for i in low(a)..high(a):
    result[i] = (a[i], b[i])

let nameAndAddresses = names.zip(addresses)

type
    PartsOfSpeech {.pure.} = enum
      Pronoun, Verb, Article, Adjective, Noun, Adverb
let partOfSpeechExamples: array[PartsOfSpeech, string] = [
"he", "reads", "the", "green", "book", "slowly"
]