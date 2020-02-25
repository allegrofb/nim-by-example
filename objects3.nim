from objects import Animal

type
  AnimalRef* = ref Animal

let spot = AnimalRef(name: "Spot",
                   species: "C. lupus",
                   age: 1)
type
    Thing* = ref object
        positionX*, positionY*: int                   