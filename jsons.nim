import json

proc test_json = 
    let element = "Hydrogen"
    let atomicNumber = 1

    let jsonObject = %* {"element": element, "atomicNumber": atomicNumber}
    # This will print {"element":"Hydrogen", "atomicNumber": 1}
    echo $jsonObject

proc test_json2 = 
    # We start with a string representation of a JSON object
    let jsonObject = """{"name": "Sky", "age": 32}"""
    let jsonArray = """[7, 8, 9]"""

    let parsedObject = parseJson(jsonObject)
    let name = parsedObject["name"].getStr()
    # This will print Sky
    echo name

    let parsedArray = parseJson(jsonArray)
    let eight = parsedArray[1].getInt()
    # This will print 8
    echo eight

proc test_json3 =
    # First we'll define our types
    type
        Element = object
            name: string
            atomicNumber: int
    
    
    # Let's say this is the JSON we want to convert
    let jsonObject = parseJson("""{"name": "Carbon", "atomicNumber": 6}""")
    
    let element = to(jsonObject, Element)
    # This will print Carbon
    echo element.name
    # This will print 6
    echo element.atomicNumber    

test_json()
test_json2()
test_json3()
