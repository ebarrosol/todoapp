//: Playground - noun: a place where people can play

import UIKit

var fruit = "apple"
var myfruit = "banana"


if(fruit == myfruit)
{
    println("This is true")
}
else if(fruit == "orange")
{
    println("Special condition met")
}
else
{
    println("no conditions met")
}


switch fruit
{
    case "apple":
        println("The fruit was an \(fruit)")
        break
    case "banana":
        println("The fruit was an \(fruit)")
        break
    default:
        println("No fruit natched")
}