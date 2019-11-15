//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

var dict: [String: Int] = [:]

// realizes itself that it is String: String
var keyValue = [
  "key": "value",
  "key1": "value1"
]

print(keyValue)

keyValue.updateValue("newValue", forKey: "key1")
print(keyValue)

keyValue["key2"] = "value2"
print(keyValue)

keyValue["key2"] = "newValue2"
print(keyValue)

keyValue["key2"]
keyValue["notexisting"]
print(keyValue["key2"])

keyValue.count
keyValue.isEmpty

for (key, value) in keyValue {
  print("\(key) : \(value)")
}

for (name, _) in keyValue {
  print("\(name)")
}

print(".----")

for name in keyValue.keys {
  print(name)
}

print(".----")

for name in keyValue.values {
  print(name)
}

// delete key value pair
keyValue["key2"] = nil
