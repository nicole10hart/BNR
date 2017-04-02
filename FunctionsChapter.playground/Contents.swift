//: Playground - noun: a place where people can play

import Cocoa

func printGreeting() {
    print("Hello, playground")
}

printGreeting()

func printPersonalGreeting(name: String) {
    print("Hello \(name), welcome to your playground")
}

printPersonalGreeting(name: "Nicole")

func divisionDescriptionFor(numerator: Double, denominator: Double){
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)")
}

divisionDescriptionFor(numerator: 9.0, denominator: 3.0)

func printMorePersonalGreeting(to name: String){
    print("Hello \(name), welcome to your playground")
}
printMorePersonalGreeting(to: "Nicole")

func printPersonalGreetings(to names: String...) {
    for name in names {
        print("Hello \(name), when to your playground.")
    }
}
printPersonalGreetings(to: "Nicole", "Alex", "Jacob", "John")

func divisionDescripion(numerator: Double, denominator: Double, withPunc punctuation: String = "."){
     print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
}
divisionDescripion(numerator: 9.0, denominator: 3.0)
divisionDescripion(numerator: 9.0, denominator: 3.0, withPunc: "!")

var error = "The request failed:"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String){
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error

func divisionDescripionTwo(numerator: Double, denominator: Double, withPunc punctuation: String = ".") -> String {
    return ("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
}
print(divisionDescripionTwo(numerator: 9.0, denominator: 3.0, withPunc: "!"))

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangleWith(base: 3.0, height: 5.0)

func sortedEvenOddNumbers( _ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0{
            evens.append(number)
        }
        else {
            odds.append(number)
        }
    }
    return(evens, odds)
}

let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Matt", nil, "Mathias"))
if let theName = middleName {
    print(theName)
}

func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: ("Matt", "Danger", "Mathias"))







