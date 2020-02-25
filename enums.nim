type
  CompassDirections = enum
    cdNorth, cdEast, cdSouth, cdWest

  Colors {.pure.} = enum
    Red = "FF0000", Green = (1, "00FF00"), Blue = "0000FF"

  Signals = enum
    sigQuit = 3, sigAbort = 6, sigKill = 9

for direction in ord(low(CompassDirections))..
                 ord(high(CompassDirections)):
  echo CompassDirections(direction), " ord: ", direction

var ordinal = low(int)
inc ordinal
dec ordinal
echo high(char)    

when false:
    var nonOrdinal = sigQuit
    inc nonOrdinal
    dec nonOrdinal