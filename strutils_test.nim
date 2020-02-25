import strutils

var a = "hello welcome,friend"

# The split proc takes a sequence of characters and splits a string based on them
echo a.split({' ', ','})

# The contains proc determines whether a string contains a substring or character
echo a.contains("hello")