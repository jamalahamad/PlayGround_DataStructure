//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"

//: [Next](@next)

// MARK:- Triangle

func simpleTriangle() {
    for row in 0...5 {
        for star in 0...row {
            print("*", terminator: "")
        }
        print("")
    }
}

func triangleUpsideDown() {
    var star = 5
    for row in 0...5 {
        for star in 0...star {
            print("*", terminator: "")
        }
        star -= 1
        print("")
    }
}

func triangleSpaceFirstUpsideDown() {
    
    var star = 5
    for row in 0...5 {
        for space in 0...row {
            print(" ", terminator: "")
        }
        for str in 0...star {
            print("*", terminator: "")
        }
        star -= 1
        print("")
    }
}

func simplePyramid() {
    var star = 11
    for row in 0...star {
        for space in 0..<star {
            print(" ", terminator: "")
        }
        for str in 0..<(2*row + 1) {
            print("*", terminator: "")
        }
        star -= 1
        print("")
    }
}

func printDiamond() {
    var star = 10
    var row = 0
    var space = 6
    
    for rw in 0..<star {
        if rw < 5 {
            row += 1
            space -= 1
        } else if rw >= 5 {
           row -= 1
            space += 1
        }
        for space in 0..<space {
            print(" ", terminator: "")
        }
        for str in 0..<(2*row + 1) {
            print("*", terminator: "")
        }
        
        print("")
    }
}

printDiamond()
