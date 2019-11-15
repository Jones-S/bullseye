//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// Nested loops and early exit

let week = ["monday", "tuesday", "wednesday", "thurday", "fr", "sa", "su"]

for i in 0..<week.count {
  if week[i] == "wednesday" {
    break
  }
  print(week[i])
}

for i in 0..<week.count {
  if week[i] == "wednesday" {
    print("special: \(week[i])")
    continue // will jump to beginning of loop
  }
  print(week[i])
}

// Nested loops (don't print haunted 13)
for floor in 11...15 where floor != 13 {
  for room in 1...3 {
    print("Room \(room) in floor \(floor)")
  }
}

// label loops
first_loop: for i in 3...6 {
  second_loop: for j in 1...3 {
    if j == 2 {
      continue
    }
    print ("\(i)-\(j)")
  }
}

print ("----")

// label loops
first_loop: for i in 3...6 {
  second_loop: for j in 1...3 {
    if j == 2 {
      continue first_loop
    }
    print ("\(i)-\(j)")
  }
}
