//
//  hello_world.swift
//  
//
//  Created by Sean Armstrong on 5/22/23.
//

import Foundation
// the tutorial imported the Foundation framework, but it is not necessary
// for a simple Hello World program. Foundation is used for just about
// everything in a Swift program, from fundamental data types, file handling,
// to even notifications. However, there ARE frameworks for other more
// specialized needs. 

var str = "Hello world"
// var
// a variable data type -- it's mutable
// var str
// a variable named str stored in memory
// "Hello world"
// a string literal
// var str = "Hello world"
// so a variable named "str" storing a "Hello world" string literal 

print(str)
// print()
// print() is a built-in function part of the Swift Standard Library

// compile this as follows
// $ swiftc hello_world.swift

// execute
// ./hello_world

// without importing Foundation or initializing a variable, the program
// could have worked just as well this way:
print("Hello world!")

// to test myself on this, I should know how to write a Hello World
// program in Xcode projects and playgrounds and how to do it via
// the terminal.
