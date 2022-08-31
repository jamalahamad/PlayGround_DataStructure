//: [Previous](@previous)

import Foundation

//: [Next](@next)

let unsArray = [3,2,10,5,8,4,9]
var upco = 0
var innco = 0
func bubbleSort(unsortedArray: [Int]) -> [Int] {
    var sortedArray = unsortedArray
    for _ in 1..<sortedArray.count-1 {
        upco += 1
        var swap = false
        for j in 0..<sortedArray.count-1 {
            innco += 1
            if sortedArray[j] > sortedArray[j+1] {
                let temp = sortedArray[j]
                sortedArray[j] = sortedArray[j+1]
                sortedArray[j+1] = temp
                swap = true
            }
        }
        if !swap {
            return sortedArray
        }
    }
    return sortedArray
}
//print(bubbleSort(unsortedArray: unsArray))
//print(upco)
//print(innco)

func selectionSort(unsortedArray: [Int]) {
    var sortArray = unsortedArray
    for i in 0..<sortArray.count {
        var index = i
        for j in i+1..<sortArray.count {
            if sortArray[j] < sortArray[index]{
                index = j
            }
        }
        
        if index != i {
            let temp = sortArray[index]
            sortArray[index] = sortArray[i]
           sortArray[i] = temp
        }
   
    }
    
    print(sortArray)
}
//selectionSort(unsortedArray: unsArray)

func insertionSort(unsortedArray: [Int]) -> [Int] {
    var sortArray = unsortedArray
    for _ in 1..<sortArray.count {
        for j in 1..<sortArray.count {
            if sortArray[j] < sortArray[j-1]{
                let temp = sortArray[j-1]
                sortArray[j-1] = sortArray[j]
               sortArray[j] = temp
            }
        }
    }
    
    return sortArray
}
//print(insertionSort(unsortedArray: unsArray))

func linearSearch(arr: [Int], element: Int) -> Bool {
    for el in arr {
        if el == element {
          return true
        }
    }
    return false
}

//print(linearSearch(arr: unsArray, element: 5))

func binarySearch(arr: [Int], element: Int) -> (Bool, Int) {
    var startIndex = 0
    var lastIndex = arr.count-1
    var middle = (startIndex + lastIndex)/2
    for i in 0..<arr.count {
        middle = (startIndex + lastIndex)/2
        if element > arr[middle]  {
            startIndex = middle + 1
        }
        if element < arr[middle] {
            lastIndex = middle - 1
        }
        if arr[middle] == element {
            return (true, middle)
        } else if startIndex > lastIndex {
            return (false, -1)
        }
    }
    return (false, -1)
}

print(binarySearch(arr: [2,3,5,8,7,10,15,25,30], element: 10))
