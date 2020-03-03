# Diverse Shortcut Definitionen

proc `-`(s: string) =
    echo s[1..s.high]

proc a(s: string) =
    echo s

proc b(s: string, x: int) =
    echo($ x & ". " & s)

proc c(s: string, a, b: int) =
    echo($ a & "/" & $ b & ". " & s)

-("Test")
-"Test"
- "Test"

a"Test"
a "Test"
a("Test")
"Test".a

"Test".b(1)
"Test".b 2
"Test".b 3 + 1

c "Test", 1, 2
c("Test",1,2)
"Test".c(1,2)