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

var myAnimal = Animal();

myAnimal.name = "woofy"
myAnimal.age = 2
myAnimal.getDetails();


