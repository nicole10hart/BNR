//: Playground - noun: a place where people can play

import Cocoa

struct Point: Comparable {
    let x: Int
    let y: Int
    
//    func distance(lhs: Point, rhs: Point) -> Int {
//        return sqrt(pow((lhs.x - rhs.x), 2) + pow((lhs.y - rhs.y), 2))
//    }
    
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
    
    static func <(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
    }
    
    static func +(lhs: Point, rhs: Point) -> Point {
        return Point(x: (lhs.x + rhs.x), y: (lhs.y + rhs.y))
    }
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)

let abEqual = (a == b)
let abNotEqual = (a != b)

let c = Point(x: 2, y: 6)
let d = Point(x: 3, y: 7)

let cdEqual = (c == d)
let cLessThanD = (c < d)

let cLessThanEqualD = (c <= d)
let cGreaterThanD = (c > d)
let cGreaterThanEqualD = (c >= d)

let aPlusB = (a + b)
let cPlusD = (c + d)




