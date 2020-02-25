import strutils, tables

proc readCfgAtRuntime(cfgFilename: string): Table[string, string] =
  let
    inputString = readFile(cfgFilename)
  var
    source = ""
  
  result = initTable[string, string]()
  for line in inputString.splitLines:
    # Ignore empty lines
    if line.len < 1: continue
    var chunks = split(line, ',')
    if chunks.len != 2:
      quit("Input needs comma split values, got: " & line)
    result[chunks[0]] = chunks[1]
  
  if result.len < 1: quit("Input file empty!")

let info = readCfgAtRuntime("data.cfg")

when isMainModule:
  echo info["licenseOwner"]
  echo info["licenseKey"]
  echo info["version"]



import macros, strutils

macro readCfgAndBuildSource(cfgFilename: string): typed =
  let
    inputString = slurp(cfgFilename.strVal)
  var
    source = ""
  
  for line in inputString.splitLines:
    # Ignore empty lines
    if line.len < 1: continue
    var chunks = split(line, ',')
    if chunks.len != 2:
      error("Input needs comma split values, got: " & line)
    source &= "const cfg" & chunks[0] & "= \"" & chunks[1] & "\"\n"
  
  if source.len < 1: error("Input file empty!")
  result = parseStmt(source)

readCfgAndBuildSource("data.cfg")

when isMainModule:
  echo cfglicenseOwner
  echo cfglicenseKey
  echo cfgversion





import macros, strutils

dumpTree:                               
  const cfgversion: string = "1.1"
  const cfglicenseOwner = "Hyori Lee"
  const cfglicenseKey = "M1Tl3PjBWO2CC48m"

macro readCfgAndBuildAST(cfgFilename: string): typed =
  let
    inputString = slurp(cfgFilename.strVal)
  
  result = newNimNode(nnkStmtList)
  for line in inputString.splitLines:
    # Ignore empty lines
    if line.len < 1: continue
    var chunks = split(line, ',')
    if chunks.len != 2:
      error("Input needs comma split values, got: " & line)
    var
      section = newNimNode(nnkConstSection)
      constDef = newNimNode(nnkConstDef)
    constDef.add(newIdentNode("ast_cfg" & chunks[0]))
    constDef.add(newEmptyNode())
    constDef.add(newStrLitNode(chunks[1]))
    section.add(constDef)
    result.add(section)
  
  if result.len < 1: error("Input file empty!")

readCfgAndBuildAST("data.cfg")

when isMainModule:
  echo ast_cfglicenseOwner
  echo ast_cfglicenseKey
  echo ast_cfgversion

