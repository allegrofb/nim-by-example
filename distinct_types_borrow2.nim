type
  Foo = object
    a: int
  MyFoo {.borrow: `.`.} = distinct Foo

var value: MyFoo
echo value.a  # Works