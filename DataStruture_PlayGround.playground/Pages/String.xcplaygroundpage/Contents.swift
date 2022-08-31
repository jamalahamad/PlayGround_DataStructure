//: [Previous](@previous)

import Foundation

var strs = "Hello, playground"

//: [Next](@next)

func countLetterInString() {
    var count = 0
    var str = Array(strs)
 
    for i in str {
        count = 0
        for ch in str {
            if i == ch {
                count += 1
            }
        }
       print("char: \(i) is = \(count)")
        
    }
}

func reverseString() {
    var str = Array(strs)
    for i in 0..<str.count/2 {
        let temp = str[i]
        str[i] = str[str.count-i-1]
        str[str.count-1-i] = temp

    }
  print(String(str))
}

func checkPalindrome(str: String) {
    
    let str = Array(str)
    
    for i in 0..<str.count/2 {
        
        if str[i].lowercased() != str[str.count-i-1].lowercased() {
            print("not palindrome: \(String(str))")
            return
        }
    }
    print("palindrome: \(String(str))")
}

func removeDuplicateCopyOfCharacterFromString() {
    var st = [Character]()
    for i in strs {
//        if !st.contains(i) {
//            st.append(i)
//        }
    }
}

func countMaximumTimeRepeatedGivenElement() {
    let str = "222222345222722222"
    var count = 0
    var maxCount = 0
    for char in str {
        if char == "2" {
            count += 1
            if maxCount < count {
                maxCount = count
            }
        } else {
            count = 0
        }
    }
    print("max count: \(maxCount)")
}

func findAnagramOfString() {
    let s1 = "abcde"
    let s2 = "baecd"
    var sorted1 = s1.sorted()
    var sorted2 = s2.sorted()
    
    var l1 = sorted1.count
    var l2 = sorted2.count
    if l1 != l2 {
        print("not anagram ")
        return
    }
    for i in 0..<l1 {
        if sorted2[i] != sorted1[i] {
            print("not anagram")
            return
        }
    }
    print("anagram")
}

func findMissingNumberFromAnArray(){
    
    let array = [7,2,5,4,6,1]
    var x = array[0]
    var y = 1
    
    for i in 1..<array.count {
        x = x^array[i]
    }
    
    for j in 2...array.count + 1 {
        y = y ^ j
    }
    
    let result = x^y
    
    print(result)
    
}

func findMinDistanceInArray(array: [Int], f: Int, s: Int) {
    var min = array.count + 1
    for i in 0..<array.count {
        for j in i+1..<array.count {
            if (array[i] == f && array[j] == s) || (array[i] == s && array[j] == f) {
                if (j-i) < min {
                    min = j-i
                }
            }
        }
    }
    
    print(min)
}

findMinDistanceInArray(array: [2,3,4,5,6,7,8], f: 3, s: 2)
