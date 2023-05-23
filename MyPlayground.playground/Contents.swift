import Foundation

// basic hello world program

var str = "Hello world"
print(str)

// variables, constants, and statics

// variables
var mutable = 1
print("The var 'mutable' has been assigned this integer: \(mutable)")
mutable = mutable + 1
print("The var 'mutable' = 'mutable' plus one: \(mutable)")

// constants
let immutable = "everlasting"
print("our constant 'immutable' holds the string '\(immutable)'")

// immutable = "transient"
print("if we do immutable = 'transient' \nerror message: change 'let' to 'var' to make it mutable")

// statics
class Discount {
    static let static_instance = 0.25
}

print("the class 'Discount' has a 'static' attribute named 'static_instance' with this value: \(Discount.static_instance)")
print("statics cannot exist outside of objects i.e. you cannot declare them outside of a class")
