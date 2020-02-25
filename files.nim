

let text = "Cats are very cool!"
writeFile("cats.txt", text)

proc test_write_defer =
    let lines = ["Play", "Eat", "Sleep"]
    # The fmWrite constant specifies that we are opening the file for writing.
    let f = open("catactivities.txt", fmWrite)
    defer: f.close()

    for line in lines:
        f.writeLine(line)

test_write_defer()

# This will read the entire file into the string entireFile
let entireFile = readFile("cats.txt")
echo entireFile  # prints the entire file

proc test_read_defer =
    let f = open("catactivities.txt")
    # Close the file object when you are done with it
    defer: f.close()

    let firstLine = f.readLine()
    echo firstLine  # prints Spitfire

test_read_defer()



for line in lines "cats.txt":
    echo line

for line in lines "catactivities.txt":
    echo line    