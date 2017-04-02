//: Playground - noun: a place where people can play

import Cocoa

// variations in Array declaration
var bucketList0: Array<String>

var bucketList1: [String]

var bucketList2: [String] = ["Climb Mount Everest"]

var bucketList = ["Climb Mount Everest"]

// accessing and modifying Arrays
bucketList.append("Fly hot air balloon to Fiji")
bucketList.append("Watch LOR in one day")
bucketList.append("Go on a walkabout")
bucketList.append("Scuba dive the Great Blue Hole")
bucketList.append("Find a triple rainbow")

bucketList.remove(at: 2)
//bucketList

// counting items in an Array
print(bucketList.count)
print(bucketList[0...2])

// appending items to Array
bucketList[2] += " in Austrailia"
bucketList[0] = "Climb Mt Kilamanjaro"
//bucketList

// loops to append items to an Array
var newBucketList = ["Climb Mount Everest"]
var newItems = [
    "Climb Mount Kilamanjaro",
    "Fly hot air balloon to Fiji",
    "Watch LOR in one day",
    "Go on a walkabout",
    "Scuba dive the Great Blue Hole"
]

//for item in newItems {
//    newBucketList.append(item)
//}
//newBucketList

// refactoring with additon operator
newBucketList += newItems
//bucketList

// inserting new items
bucketList.insert("Toboggan across Alaska", at:2)

// Array equality
var myronsList = [
    "Climb Mount Kilamanjaro",
    "Fly hot air balloon to Fiji",
    "Watch LOR in one day",
    "Go on a walkabout",
    "Scuba dive the Great Blue Hole"
]
let equal = (bucketList == myronsList)
print(equal)


// immutable Arrays
let lunches = [
    "Cheeseburger",
    "Veggie Pizza",
    "Chicken Caesar Salad",
    "Black Bean burrito",
    "Falafel Wrap"
]



