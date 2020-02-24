# Give it a different name to avoid conflict
iterator `...`*[T](a: T, b: T): T =
  var res: T = T(a)
  while res <= b:
    yield res
    inc res

for i in 0...5:
  echo i