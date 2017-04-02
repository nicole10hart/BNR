//: Playground - noun: a place where people can play

import Cocoa

// declare Optional String
var errorCodeString: String?
errorCodeString = "404"

var errorDescription: String?

if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
    //print("\(theError): \(errorCodeInteger)")
    errorDescription = "\(errorCodeInteger + 200): resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased()
errorDescription

upCaseErrorDescription?.append(" PLEASE TRY AGAIN")
upCaseErrorDescription

// longer version of below example
//let description: String
//if let errorDescription = errorDescription {
//    description = errorDescription
//}
//else {
//    description = "No error"
//}

errorDescription = nil
let description = errorDescription ?? "No error"

// Silver challenge - play around with optionals
var silverChallenge: String!
print(silverChallenge)