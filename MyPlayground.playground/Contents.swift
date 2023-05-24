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
// "statics cannot exist outside of objects i.e. you cannot declare them outside of a class"

// types

var type_number = 3 // this data type is an integer
var type_name = "Sean" // string

// Swift has type inferencing i.e. under the hood Swift checks data types
type(of:type_name)

// strict data types can be assigned to named memory spaces
var type_surname: String = "Armstrong"

// try to change "type_surname" to an integer and you will get an error message
// type_surname = 123
// error: cannot assign value of type 'Int' to type 'String'
let type_age: Int = 32
let type_price: Double = 0.99 // n.b. just two decimal points
let type_height: Float = 200.7382687465826348
print(type_height)
// seems to round automatically

// suppose we create a class object;
// that object can be assigned a type based on its class

class TypePerson {
    
}

var type_sean: TypePerson = TypePerson()

// it is a good practice to assign data types to avoid "ambiguous type" error messages

import UIKit
var type_button1: UIButton = UIButton()
// we don't need the first instance of "UIButton" because Swift
// is smart enough to guess, but better to avoid errors
// and to have explicit notation for documentation

// boolean types
var type_is_complete: Bool = false
type_is_complete = true

// only include the type when initializing or declaring a var, let, or static
