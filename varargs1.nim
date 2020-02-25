proc printThings(things: varargs[string]) =
  for thing in things:
    echo thing

printThings "words", "to", "print"