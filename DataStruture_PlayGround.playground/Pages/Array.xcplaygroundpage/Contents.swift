//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//class Stack {
//    var stackArray: String = ""
//
//    func push(element: String.Element) {
//        stackArray.append(element)
//    }
//
//    func pop() -> String.Element {
//        var lst: Character = "0"
//        if stackArray.count > 0 {
//            lst = stackArray.last ?? "0"
//            stackArray.removeLast()
//        }
//        return lst
//    }
//}
//
//let s1 = Stack()
//for ele in str {
//    s1.push(element: ele)
//}
//print(s1.stackArray)
//var revStr = ""
//for _ in s1.stackArray {
//    revStr.append(s1.pop())
//}
//
//print("--")
//print(revStr)


// Arrange 0,1,2 in sorted order
//var arrangeArr = [Int]()
//
//class Arrays {
//    func createArray() {
//        let arr = [0,1,2,1,2,0,1,0,2]
//        var c0 = 0
//        var c1 = 0
//        var c2 = 0
//
//        for e in arr {
//            switch e {
//            case 0:
//                c0 += 1
//            case 1:
//                c1 += 1
//            case 2:
//                c2 += 1
//            default:
//                break
//            }
//        }
//
//        formArr(type: 0, count: c0)
//        formArr(type: 1, count: c1)
//        formArr(type: 2, count: c2)
//
//    }
//
//
//    //for _ in 1...c0 {
//    //    arrangeArr.append(0)
//    //}
//    //for _ in 1...c1 {
//    //    arrangeArr.append(1)
//    //}
//    //for _ in 1...c2 {
//    //    arrangeArr.append(2)
//    //}
//
//
//    func formArr(type: Int, count: Int) {
//        for _ in 1...count {
//            arrangeArr.append(type)
//        }
//    }
//}
//
//let s11 = Arrays()
//s11.createArray()
//print(arrangeArr)

var missArray = [1,2,3,5,6,7,4,8]
//var total = ((missArray.count + 1)*(missArray.count + 2))/2  //sum of n natural number
//for i in 0..<missArray.count {
//    total -= missArray[i]
//}

//var x1 = missArray[0]
//var x2 = 1
//for e in 1..<missArray.count {
//  x1 = x1 ^ missArray[e]
//}
//for ex2 in 2..<missArray.count + 2 {
//    x2 = x2 ^ ex2
//}
//print(x1^x2)

// remove duplicate array

//var remArray = [2,3,5,3,6,4,4,8,2]
//var nwArray = [Int]()
//var sets = Set<Int>()
//
//for e in remArray {
//    if nwArray.contains(e) {
//        continue
//    } else {
//        nwArray.append(e)
//    }
//    sets.insert(e)
//}
//print(sets)

// 2nd metod first sort array and compare to adjacent element if it similar remove
//func removeDuplicateElement() {
//    var rem = [Int]()
//    for i in 0..<remArray.count-1{
//        if remArray[i] != remArray[i+1] {
//            rem.append(remArray[i])
//        }
//    }
//    if remArray[remArray.count-1] != remArray[remArray.count-2] {
//        rem.append(remArray[remArray.count-1])
//    }
//    print(rem)
//}

// 3rd method through dictionary each key is different use it

//func removeDuplicateElement() {
//    var dict = [Int: Int] ()
//
//    var rem = [Int]()
//    for i in 0..<remArray.count-1{
//        dict.updateValue(1, forKey: remArray[i])
//    }
//    for e in dict {
//        rem.append(e.key)
//    }
//    print(rem)
//}


// find first min and second min

//var min = 20000
//var smin = 20000
//for i in remArray {
//    if i < min {
////        smin = min
//        min = i
//    } else if smin > i && min != i {
//        smin = i
//    }
//}
//print(min)
//print(smin)

var sumArray = [-2, 2, 3, 4, 6, 8, 9, 11]
var sum  = 6
var count = 0
//for i in 0..<sumArray.count {
//    for j in i+1..<sumArray.count {
//        if sumArray[i] + sumArray[j] == sum {
//            count += 1
//            print("count: \(count), element: \(sumArray[i]), \(sumArray[j])")
//        }
//    }
//}
//var dict = [Int: Int]()
//for i in sumArray {
//    dict.updateValue(i, forKey: i)
//}
//
//for i in 0..<dict.count {
//    if dict[i] == sum - sumArray[i] {
//        count += 1
//        print("count: \(count), element: \(dict)")
//    }
//}

// find pair of given sum
// first sort array(nlogn) and then find pair (o(n))
//func findPairOfSum(arr: [Int], sum: Int) {
//    var low = 0
//    var high = arr.count - 1
//
//    while low < high {
//        if arr[low] + arr[high] == sum {
//            print("count: \(count), element: \(arr[low]), \(arr[high])")
//
//        }
//        if arr[low] + arr[high] > sum {
//            print("high minus \(arr[low]), \(arr[high])")
//            high -= 1
//        } else {
//            low += 1
//            print("low plus \(arr[low]), \(arr[high])")
//
//        }
//    }
//}
//
//findPairOfSum(arr: sumArray, sum: sum)

// find missing number in array
// first add all element of auxilary of missing array plus one and subtract each element of array (total sum can be obtained from natural sum n(n+1)/2)
// find through xor operation
var missingArray = [1,2,3,7,5,6,4]
//func findMissingNumberInArray(array: [Int]) -> Int {
//   let arr = array
//    var total = 0
////    total = ((array.count+1)*(array.count+2))/2
////    for e in arr {
////        total -= e
////    }
////    print(total)
////    for i in 1...arr.count+1 {
////       total -= i
////    }
//
//    // with xor
//    var x = arr[0]
//    var y = 1
//    for e in arr {
//       x = x^e
//    }
//
//    for i in 1...arr.count + 1 {
//        y = y^i
//    }
//    return (x^y)
//}

//print(findMissingNumberInArray(array: missingArray))
// find duplicate element in array
// first Brute force O(n2)
// 2nd first sort array and compare with adjacent element O(nlogn)

//@discardableResult
//func findDuplicateElement(array: [Int]) -> Int {
//    var arr = array
//    var count = 0
////    for i in 0..<arr.count-1 {
////        for j in i+1..<arr.count {
////            if arr[i] == arr[j] {
////                print("element: \(arr[i]), at: (\(i),\(j)) ")
////              count += 1
////            }
////        }
////    }
//
//    // time complexity O(n), space O(n) with set
//   var sets = Set<Int>()
//    for e in arr {
//        if sets.insert(e).inserted == false {
//            print("duplicate: \(e)")
//        }
//    }
//
//    // time complexity O(n), space O(1) with dictionary
//    // dictionary has keys.contains, update, O(1) complexity
//    var dict = [Int: Int]()
//    for i in 0..<arr.count {
//        if dict.keys.contains(arr[i]) {
//            var cnt = dict[arr[i]]!
//            cnt += 1
//            dict.updateValue(cnt, forKey: arr[i])
//        } else {
//          dict.updateValue(1, forKey: arr[i])
//        }
//    }
//    print("dup: \(dict)")
//    return count
//}

//print(findDuplicateElement(array: [2,100,200,4,200,5,3,100,5,2,6,6,100,100]))

//func findLargestAndSmallestElement(arr: [Int]) {
//
//    var largest = 0
//    var smallest = 2000
//
//    for e in arr {
//        if largest < e {
//            largest = e
//        }
//        if smallest > e {
//            smallest = e
//        }
//    }
//   print("largest: \(largest), smallest: \(smallest)")
//}
//
//findLargestAndSmallestElement(arr: [2,3,1,4,5,6,100,50,60])

//func findSmallestAndSecondSmallest(arr: [Int]) {
//
//    var smallest = Int.max
//    var secondSmallest = Int.max
//
//    for e in arr {
//        if e < smallest {
//            secondSmallest = smallest
//          smallest = e
//        } else if secondSmallest > e && secondSmallest > smallest {
//            secondSmallest = e
//        }
//
//    }
//   print("smallest: \(smallest), secodsmallest: \(secondSmallest)")
//}
//findSmallestAndSecondSmallest(arr: [2,6,100,50,60])

//func findPairsOfSumEqualToGivenNumber(arr: [Int], sum: Int) {
//    // Brute Forrce
//    // O(n2)
//
////    for x in 0..<arr.count-1 {
////        for y in x+1..<arr.count {
////            if arr[x] + arr[y] == sum {
////              print("element: \(arr[x]), \(arr[y])")
////            }
////        }
////    }
//
//    // using dictionary o(n)
//    // duplicate are not allowed
//
//    var dict = [Int: Int]()
//
//    for i in 0..<arr.count {
//        dict.updateValue(i, forKey: arr[i])
//    }
//
////    for i in 0..<arr.count {
////       let target = sum - arr[i]
////        if dict.keys.contains(target) && dict[target] != i {
////            print("ind: \(arr[i]), el: \(dict.keys.)")
////        }
////    }
//    var count = 0
//    for (index, _) in dict.enumerated() {
//       let target = sum - arr[index]
//        if dict.keys.contains(target) && dict[target] != index {
//            print("e1: \(arr[index]), e2: \(arr[dict[target]!])")
//            count += 1
//
//        }
//    }
//    print("pairs: \(count/2)")
//}
//
//findPairsOfSumEqualToGivenNumber(arr: [3,5,4,6,2,7], sum: 9)

//func removeDuplicateFromAnArray(array: [Int]) {
//    // Brute Force O(n2)
//    var filtArray = array
////    for x in 0..<array.count - 1 {
////        for y in x+1..<array.count  {
////            if array[x] == array[y] {
////                print("x: \(x), y: \(y), count: \(filtArray)")
////                let ind = filtArray.firstIndex(of: array[y])
////                filtArray.remove(at: ind!)
////                continue
////            }
////        }
////    }
//
//    // with set time complexity O(n), space O(n)
//    var filterSet = Set<Int>()
//    var fArray = [Int]()
//    for e in filtArray {
//        //filterSet.insert(e)
//        if !fArray.contains(e) {
//            fArray.append(e)
//        }
//    }
//
//    // with dictionary time complexity O(n), space O(1)
//    var dict = [Int: Int]()
//    for e in filtArray {
//        dict.updateValue(e, forKey: e)
//    }
//
//
//    print("filtered array: \(dict.keys)")
//}

//removeDuplicateFromAnArray(array: [2,5,7,8,5,4,3,2,7,9,2])

func findMostFrequentElement(array: [Int]) {
  // Brute Force O(n2)
    var count = 0
    var max = 0
    var element = 0
//    for x in 0..<array.count-1 {
//        count = 1
//        for y in x+1..<array.count {
//            if array[x] == array[y] {
//                count += 1
//                if max < count {
//                    max = count
//                    element = array[x]
//                }
//            }
//        }
//    }
    
    // first sort array and linearly traverse and find adjacent are same or not
    // O(nlogn), space O(1)

        let sortArray = array.sorted()
    print("sortArray:\(sortArray)")
//    for x in 0..<array.count - 1 {
//        if sortArray[x] == sortArray[x+1] {
//            count += 1
//        } else {
//           if max < count {
//                max = count
//                element = sortArray[x]
//            }
//            count = 1
//        }
//        if max < count {
//            max = count
//            element = sortArray[x]
//        }
//    }
    
//    // with dictionary complexity O(n), space O(1)
    var dict = [Int: Int]()
    for e in array {
        if dict.keys.contains(e) {
            var key = dict[e]
            key! += 1
            dict.updateValue(key!, forKey: e)
            print("first repeated: \(e)")
        } else {
            dict.updateValue(1, forKey: e)
        }
    }
    for (index, el) in dict.enumerated() {
        if el.value > max {
            max = el.value
            element = el.key
        }
    }
    print("max: \(max), ele: \(element)")
//    print("dict: \(dict)")
}
//
findMostFrequentElement(array: [2,5,53,3,3,3])

// find kth smallest and largest element
// find common element in multiple array
// find largest three element in array
// rearrange alternative positive and negative in array
// find if there is a sub array with sum equal to zero
// find there is sum equal to zero
// find array with maximum sum in array with positive and negative
// find lenght of longest consecutive sequence in array
