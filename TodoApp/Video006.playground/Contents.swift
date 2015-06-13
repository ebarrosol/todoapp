//: Playground - noun: a place where people can play

import UIKit

class Animal
{
    var name = "default";
    var age = 0;
    
    func getDetails() -> String
    {
        return "This animal name is \(name) it is \(age) years old."
    }
    
}


class Dog : Animal
{
    func woof() -> String
    {
        return "woof woof woof."
    }
}


class Cat : Animal
{
    func meow() -> String
    {
        return "meow meow meow."
    }
}

var mydog = Dog()
mydog.name = "Toto"
mydog.age = 16
mydog.woof()
mydog.getDetails()

var mycat = Cat()

mycat.name = "Hugo"
mycat.age = 1
mycat.meow()
mycat.getDetails()

var Johnscat = Cat()
var Davescat = Cat()