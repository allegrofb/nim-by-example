type
    Dollars* = distinct float
  
proc `*` *(a, b: Dollars): Dollars {.borrow.}
proc `+` *(a, b: Dollars): Dollars {.borrow.}
var a = 20.Dollars * 20.Dollars
