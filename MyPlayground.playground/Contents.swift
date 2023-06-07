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

// FUNCTIONS AND PARAMETERS

func first_function() {
    
}

func add_two_numbers(a: Int, b: Int) -> Int {
   return a + b
}

var pig = 3
var cow = 3

let total_animals = add_two_numbers(a: pig, b: cow)
print(total_animals)

func square_number(number: Int) -> Int {
    return number * number
}

let squared_animals = square_number(number: total_animals)
print(squared_animals)

func log() {
    
}

log()

func is_even(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }
    return false
}

is_even(number: 3)
is_even(number: 2)

// Classes and Structs

class Vehicle {
    let wheels: Int = 4
}

class Car: Vehicle {
    var make: String = ""
    var color: String = ""
    
    init(make: String, color: String) {
        self.make = make
        self.color = color
    }
}

var british: Car = Car(make: "bentley", color: "olive")
var british2 = Car(make: "sunbeam", color: "red")
var british3 = british

// note that british3 is just a reference/shallow copy
print(british.make, british3.make)
british3.make = "sunbeam"
print(british.make, british3.make)

struct Truck {
    var make: String = ""
    var color: String = ""
    
    init(make: String, color: String) {
        self.make = make
        self.color = color
    }
}

var japanese: Truck = Truck(make: "toyota", color: "black")
var japanese2 = japanese

// note that japanese2 is a deep copy
print(japanese.make, japanese2.make)
japanese2.make = "ford"
print(japanese.make, japanese2.make)

// Loops

let for_array = [1, 2, 3, 4, 5, 6]

for thing in for_array {
   let result = thing * 2
    print(result)
}

var while_counter = 0

while while_counter <= 3 {
   print(while_counter)
   while_counter += 1
}

// Optionals

var not_optional_name: String = "Wooster"
// not_optional_name = nil -- error because "nil" is not a String
// so what do?

// add a question mark to make an Optional
var optional_name: String? = "Jeeves"
optional_name = nil

var optional_x: Int? = 3
var optional_y: Int? = 12

// you can't perform operations on optionals
// var not_optional_result = optional_x + optional_y ERROR
// think of optional values as wrapped in an impenetrable box

// so you have to "unwrap" optionals out of their "boxed" status
// what do?
// unwrap with if-statements

if let optional_value = optional_x {

    if let optional_value2 = optional_y {
        let optional_result = optional_value + optional_value2
        print(optional_result)
    }
    
}

// some more stuff to present how optionals are their own type
var optional_price: Double? = nil
print(optional_price)
optional_price = 1.23
print(optional_price)
type(of: optional_price)

// Conditionals
var conditional_x = 42
if conditional_x > 10 && conditional_x < 20{
    
} else if conditional_x > 20 || conditional_x < 0 {
    
} else {
    
}
