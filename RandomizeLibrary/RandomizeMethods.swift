//
//  RandomizeMethods.swift
//  RandomizeLibrary
//  Author: 118-sethshadow
//
//  NOTE: Consider this library as basic for randomization methods.  Do not attempt to use this base for
//  professional work as it does carry risk of modulous bias and generic seeding.

import Foundation
import UIKit



//generate a random Float value (.1f)
func randomFloatValue() ->Float{
    let randFloat = Float(arc4random())
    return randFloat
}

//generate any float value up to the input value (.1f)
func randomFloatValueUpTo(upperBound: Int)->Float{
    let randFloat = Float(arc4random_uniform(UInt32(upperBound + 1)))
    return randFloat
}

//generate a random Int value
func randomIntValue() -> Int{
    return Int(randomFloatValue())
}

//generate a random Int value up to the input value
func randomIntValueUpTo(upperBound: Int) -> Int{
    return Int(randomFloatValueUpTo(upperBound + 1))
}

//generate a random color
func randomColor() -> UIColor{
    let randomColor = UIColor.init(colorLiteralRed: randomFloatValue() / 256.0, green: randomFloatValue() / 256.0, blue: randomFloatValue() / 256.0, alpha: 1.0)
    
    return randomColor
}

//generate a random string using alphanumeric characters.  Does not use special characters.  String length is random as well
func randomStringAlphaNumeric()-> String {
    
    let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    
    let randomLength = randomIntValue()
    
    let randomString : NSMutableString = NSMutableString(capacity: randomLength)
    
    for (var i=0; i < randomLength; i++){
        let length = UInt32 (letters.length)
        let rand = arc4random_uniform(length)
        randomString.appendFormat("%C", letters.characterAtIndex(Int(rand)))
    }
    
    return randomString as String
}

//generate a random string using alphanumeric and special characters.  String length is random as well
func randomStringAlphaNumericSpecial()-> String {
    
    let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-=[]{};':\"\\|,.<>"
    
    let randomLength = randomIntValue()
    
    let randomString : NSMutableString = NSMutableString(capacity: randomLength)
    
    for (var i=0; i < randomLength; i++){
        let length = UInt32 (letters.length)
        let rand = arc4random_uniform(length)
        randomString.appendFormat("%C", letters.characterAtIndex(Int(rand)))
    }
    
    return randomString as String
}



//generate a random string of specified length using alphanumeric characters.  Does not use special characters
func randomStringAlphaNumericWithLength(len: Int)-> String {
    
    let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    
    let randomString : NSMutableString = NSMutableString(capacity: len)
    
    for (var i=0; i < len; i++){
        let length = UInt32 (letters.length)
        let rand = arc4random_uniform(length + 1)
        randomString.appendFormat("%C", letters.characterAtIndex(Int(rand)))
    }
    
    return randomString as String
}

//generate a random string of specified length using alphanumeric and special characters
func randomStringAlphaNumericSpecialWithLength(len: Int)-> String {
    
    let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-=[]{};':\"\\|,.<>"
    
    let randomString : NSMutableString = NSMutableString(capacity: len)
    
    for (var i=0; i < len; i++){
        let length = UInt32 (letters.length)
        let rand = arc4random_uniform(length + 1)
        randomString.appendFormat("%C", letters.characterAtIndex(Int(rand)))
    }
    
    return randomString as String
}