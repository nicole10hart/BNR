//: Playground - noun: a place where people can play

import Cocoa

// option 1
var groceryBag = Set<String>()
groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapple")

for food in groceryBag{
    print(food)
}

// option 2
var groceryBag2 = Set(["Apples", "Oranges", "Pineapple"])
for food in groceryBag2 {
    print(food)
}

// option 3
var groceryBag3: Set = ["Apples", "Oranges", "Pineapple"]
for food in groceryBag3 {
    print(food)
}

let hasBananas = groceryBag.contains("Bananas")

let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

let roomatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roomatesGroceryBag)

let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)



