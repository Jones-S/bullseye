import UIKit

var str = "Hello, playgeroun2d"
var goodby = "See you soon"

print(goodby)



//: Markdown

// coomenty

// tuples are objects
let tuple = (name: "Mark", age: 34)
print(tuple.name)


let specialDate = (month: 12, day: 12, year: 2002, name: "Montag")

// ~Object destructuring
let (_, day, _, descr) = specialDate
print(day) // 12

let test = specialDate.0 // specialDate.month

// Arrays
let pastries = ["Cookie", "Cupcake", "donut"]
let pastrie: [String] = ["Cookie", "Cupcake", "donut"]

// Use var to use append method
var array: [String] = []
// ~ array.push
array.append("item")

print(array)

// concat arrays
array += ["item2", "item3"]

print(array)

array[2]
array.capacity
array.count
array.first

// test if it exists with optional
if let first = array.first {
  print(first)
}

array.contains("item")
array.contains("not-there")

array.insert("new-item", at: 1)

array.remove(at: 2)

// ~array slice
let firsttwo = array[1...2]

array.removeLast()

array

// override between 0 and 1
array[0...1] = ["trick", "tick", "track"]

array.swapAt(1,2)
array

// fails:
// firsttwo[0]
// because only reference but without an index at position 0


let anotherArray = Array(array[1...2])

// empty array
array.removeAll()

array.isEmpty




//
// Control Flow
// Loopings
//

let sports = ["surf", "skate", "foot"]

var i = 1
while i < sports.count + 1 {
  print(sports[i-1], i)
  i += 1
}

i = 1
// repeat is executed anyway, and condition is checked after... ( so even if i was bigger than 10 it executes once
repeat {
  print(i)
  i += 1
} while i < 10


// rolling dice
var rollCount = 0
var roll = 0

repeat {
  roll = Int.random(in:1...6)
  rollCount += 1
  print("Your \(rollCount) gave you a \(roll)")
} while roll != 6


let closedRange = 0...5 // 0 incl 5
let halfOpenRange = 0..<5 // not incl. 5


// for loops
var sum = 0
let count = 10

for i in 1...count {
  sum += i
}
print(sum)

for _ in 1...count {
  //  I don't car about the index
}

for _ in 1...count where count > 100 {
  // never executed, because count == 10
}

for i in 1...count where i % 2 == 1 {
  // i is always odd
}

