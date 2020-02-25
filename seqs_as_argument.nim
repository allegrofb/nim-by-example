# proc doSomething(mySeq: seq[int]) =
#   mySeq[0] = 2  # this is a compile-time error
# var testSeq = @[1, 2, 3]
# doSomething(testSeq)


proc foo(mySeq: var seq[int]) =
    mySeq[9] = 999
var thisSeq = newSeq[int](10)
foo(thisSeq)
assert thisSeq[9] == 999



proc doSomething(mySeq: seq[int]) =
    var varMySeq = mySeq  # copy the seq
    varMySeq[0] = 999
    assert varMySeq[0] == 999
var testSeq = @[1, 2, 3]
doSomething(testSeq)
assert testSeq[0] == 1

