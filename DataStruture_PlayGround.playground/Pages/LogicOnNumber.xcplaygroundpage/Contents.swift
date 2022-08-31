//: [Previous](@previous)
import UIKit
import Foundation


//: [Next](@next)




// Swaping Two Number

var array = [2,4,8,3,9,10,7]
func swapTwoNumberWithoutUsingThirdVariable() {
    
    var x = 10
    var y = 15
    
    x = x + y
    y = x - y
    x = x - y
    
    print(x)
    print(y)
    
}
swapTwoNumberWithoutUsingThirdVariable()

func printPrimeNumber(number: Int) {
    var isPrime = true
    if number == 1 {
        print("1 is not prime number")
        return
    }
    
    if number == 2 ||  number == 3{
        print(" \(number) : is prime number")
        return
    }
    
    for i in 2..<number/2 {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
    
    if isPrime {
        print(" \(number) : is prime number")
    } else {
        print("\(number) is not prime number")
    }
}

func reverseNumber() {
    var numb = 645
    var rev = 0
    var rem = 0
    while numb > 0 {
        rem = numb % 10
        rev = 10 * rev + rem
        numb = numb/10
        
    }
}

func findFactorial(num: Int) -> Int {
    var factorial = num
    for i in 1..<num {
       factorial = factorial * i
    }
    return factorial
}

func findSquareRoot(num: Int) -> Int {
     var sqRt = 0
    for i in 0...num {
        if i*i == num {
            sqRt = i
        }
    }
    return sqRt
}

print(findSquareRoot(num: 16))

// Print Last Three Maximum number

var arr = [12, 13, 1, 10, 34, 16]
var one = 0
var two = 0
var three = 0


func get() {
    
    for i in arr {
        if i > one {
            one  = i
        }
    }
    
    for i in arr {
        if two < i && i < one {
            two = i
        }
        print("secd")
    }
    
    for i in arr {
        if three < i && i < two {
            three = i
        }
        print("thitd")
    }
    
    print(one)
    print(two)
    print(three)
}
//get()

for i in arr {
    if i > one {
        three = two
        two = one
        one = i
    } else if i > two {
        three = two
        two = i
    } else if i > three {
        three = i
    }
}

