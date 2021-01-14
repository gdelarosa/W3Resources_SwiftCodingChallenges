import UIKit

func one(input: [Int]) -> Bool {
    if input.count < 1 { return false }
    
    if input.first == 5 || input.last == 5 {
        return true
    } else {
        return false
    }
}
one(input: [1,2,4,5,3])

func two(inp:[Int]) -> Bool {
    guard inp.count > 0 else { return false }
    
    if inp.first == inp.last {
        return true
    } else {
        return false
    }
}

func three(inOne: [Int], inTwo:[Int]) -> Bool {
    guard inOne.count > 1 && inTwo.count > 1 else { return false }
    
    if inOne.first == inTwo.first && inOne.last == inTwo.last {
        return true
    } else {
        return false
    }
}
three(inOne: [1,2,4], inTwo: [1,2,4])

func four(inp: [Int]) -> Int {
    return inp.reduce(0, +)
}
four(inp: [1,2,3,4])

func five (input:[Int]) -> [Int] {
    var newArray = input
    newArray.removeFirst()
    newArray.append(input.first!)
    return newArray
}
five(input: [1,3,5])

func six(input: [Int]) -> [Int] {
    return input.reversed()
}
six(input: [1,2,3,4])

func seven(input:[Int]) -> [Int] {
    var newArray = input
    
    if newArray.first! > newArray.last! {
        newArray[1] = newArray.first!
        newArray[2] = newArray.first!
    } else {
        newArray[0] = newArray.last!
        newArray[1] = newArray.last!
    }
    return newArray
}
seven(input: [2,6,7])

func eight(input:[Int]) -> Int {
    let size = input.count
    if size > 1 {
        return input[0] + input[1]
    } else {
        return input[0]
    }
}

