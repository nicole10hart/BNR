//: Playground - noun: a place where people can play

import Cocoa

enum TextAlignment: Int {
    case left       = 20
    case right      = 30
    case center     = 40
    case justify    = 50
}

var alignment0: TextAlignment = TextAlignment.left

var alignment1 = TextAlignment.left
alignment1 = .right

//if alignment == .right {
//    print("We should right-align the text!")
//}

var alignment = TextAlignment.justify

switch alignment{
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
case .justify:
    print("justified")
//default:
//    print("center aligned")
}

print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("The alignment varaible has raw value \(alignment.rawValue)")

let myRawValue = 100

if let myAlignment = TextAlignment(rawValue: myRawValue){
    print("successfully converted \(myRawValue) into a TextAlignment")
}
else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}


enum ProgrammingLanguage: String {
    case swift      = "swift"
    case objectiveC = "objetive-c"
    case c          = "c"
    case cpp        = "c++"
    case java       = "java"
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum Lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self{
        case .on:
            return ambient + 150.0
            
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
        
    }
}

var bulb = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")


enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case triangle(side1: Double, side2: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        case let .triangle(side1: s1, side2: s2):
            return (s1 + s2) / 2
        }
    }
    
    func perimeter() -> Double{
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * 4
        case let .rectangle(width: w, height: h):
            return (2 * w) + (2 * h)
        case let .triangle(side1: s1, side2: s2):
            return (s1 + s2) + sqrt((s1 * s1) + (s2 * s2))
            
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point
var triangleShape = ShapeDimensions.triangle(side1: 2.0, side2: 3.0)

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("triangle's area = \(triangleShape.area())")

print("square's perimeter = \(squareShape.perimeter())")
print("rectangle's perimeter = \(rectShape.perimeter())")
print("point's perimeter = \(pointShape.perimeter())")
print("triangle's perimeter = \(triangleShape.perimeter())")


















