//: Playground - noun: a place where people can play

import UIKit

//Strings

var str = "Hello, playground"

var name = "Rob"

print("hello " + name + ".")

//Integers (whole numbers)

var int:Int = 9

int = int / 4

var anotherInt = 7

print(int + anotherInt)

print("The value of int is \(int)")

//Doubles (number with decimals)

var number:Double = 8.4

print(number * Double(int))

//Booleans (true or false)

var isMale:Bool = true

//Challenge

var myInteger = 5
var myNumber = 5.1

print("The product of \(myInteger) and \(myNumber) is \(Double(myInteger) * myNumber)!")

//Arrays

var array = [1, 2, 3, 4]

print(array[2])

print(array.count)

array.append(56)

array.removeAtIndex(2)

array.sort()

//Challenge

var myArray = [4, 2, 6]

myArray.removeAtIndex(1)

myArray.append(myArray.first! * myArray.last!)

//Dictionaries

var dictionary = ["computer": "Somthing to play Call of Duty on",
                  "coffee": "the best drink ever"]

print(dictionary["coffee"])
print(dictionary["coffee"]!)

dictionary["pen"] = "old fashioned writing implement"

dictionary.removeValueForKey("computer")

print(dictionary)

//Challenge

var myDictionary = ["item1": 3, "item2": 5, "item3": 9]

var totalCost = 0

for (item, price) in myDictionary {
    totalCost = totalCost + price
}

print("The total cost of the 3 items is \(totalCost).")

//if statement

var age = 20

if age >= 18 {
    
    print("You can play!")

} else {

    print("Sorry! you are too young")

}

name = "Kirsten"

if name == "Rob" {
    
    print("Hi " + name + " you can play!")
    
} else {

    print("Sorry, " + name + " you can't play")

}

//And
if name == "Rob" && age >= 18 { print("you can play") }

//Or
if name == "Kirsten" || age > 18 { print("you can play") }

//Boolean in if

isMale = true
if isMale { print("You are a man!") }

//Challenge

var userName = "amin"
var password = "123"

if userName == "amin" && password == "123" {
    print("you are in")
}else if userName != "amin" && password != "123" {
    print("both username and password are wrong")
}else if userName == "amin" {
    print("your password is wrong")
}else {
    print("your username is wrong")
}

//Loops







