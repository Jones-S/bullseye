//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let array = ["john", "hans", "peter", "rudi"]

// way to loop over array with half open range
for i in 0..<array.count {
  print(array[i])
}

// loop with condition
for i in 0..<array.count where array[i].count > 4{
  print("Name longer than 4 chars \(array[i])")
}

// shorthand for for loop without index
for name in array where name.count > 4 {
  print(name)
}

// accessing first character like:
for name in array where name.first == "j" {
  print(name)
}
//is a bit dangerous
//While you can use the .first instance property of a Swift String to get the first character of a string, you’ll have to remember that pastry.first will return an Optional – that means Swift can’t guarantee that there is a first character (i.e, the string may be empty).
//
//So you’d just have to be aware of that and unwrap the value of pastry.first as an Optional (by force-unwrapping or, better still, with a default value) if you want to use pastry.first here.

// safer
for name in array where name[name.startIndex] == "j" {
  print(name)
}
