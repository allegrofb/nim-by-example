proc printThings(things: varargs[string, `$`]) =
  for thing in things:
    echo thing

printThings "thing 1", 2, @[4, 5, 6]