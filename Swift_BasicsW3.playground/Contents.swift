import UIKit

/*
 Swift coding exercices from w3resources
 https://w3resource.com/swift-programming-exercises/basic/index.php
*/

// MARK: - Basics
func sumOf(a: Int, b: Int) -> Int {
    if a == b {
        return (a+b) * 3
    } else {
        return a+b
    }
}
sumOf(a: 4, b: 4)
sumOf(a: 2, b: 5)

func two(a: Int) -> Int {
    if a > 51 {
        return (a - 51) * 2
    } else {
        return 51 - a
    }
}
two(a: 23)

func three(a: Int, b: Int) -> Bool {
    if a == 20 || b == 20 {
        return true
    } else if (a + b) == 20 {
        return true
    } else {
        return false
    }
}
three(a: 2, b: 18)

func four(a: Int, b: Int) -> Bool {
    if a > 0 && b < 0 {
        return true
    } else if a < 0 && b > 0 {
        return true
    } else if a < 0 && b < 0 {
        return true
    } else {
        return false
    }
}
four(a: -2, b: 1)

func five(a: String) -> String {
    if a.hasPrefix("Is") {
        return a
    } else {
        return "Is\(a)"
    }
}
five(a: "Apple")

func six(a: String, c: Int) -> String {
    let count = a.count
    var newWord = a
    
    let index = a.index(a.startIndex, offsetBy: c)
    if count > 0 {
        newWord.remove(at: index)
    }
    return newWord
}
six(a: "Reddit", c: 3)

func seven(a: String) -> String {
    if a.isEmpty { return ""}
    
    var result = a
    let firstChar = result.remove(at: result.index(before: result.endIndex))
    let lastChar = result.remove(at: result.startIndex)
    result.append(lastChar)
    result.insert(firstChar, at: result.endIndex)
    return result
}
seven(a: "Swifty")

func eight(a: String) -> String {
    if a.isEmpty { return "String is empty"}
    
    var result = a.lowercased()
    guard let lastChar = result.last else { return "" }
    result.insert(lastChar, at: result.startIndex)
    result.append(lastChar)
    return result
}
eight(a: "Apple")

func nine(num: Int) -> Bool {
    if num <= 0 { return false }
    
    if num % 3 == 0 || num % 5 == 0 {
        return true
    } else {
        return false
    }
}
nine(num: 15)

func ten(input: String) -> String {
    if input.isEmpty { return "This is an empty string."}
    
    let checkString = input.lowercased()
    let firstChar = checkString.prefix(2)
    return firstChar + checkString + firstChar
}
ten(input: "Berries")

func eleven(input: String) -> Bool {
    if input.hasPrefix("Is") {
        return true
    } else {
        return false
    }
}
eleven(input: "Int")

func twelve(one: Int, two:Int) -> Bool {
    if one >= 10 && one <= 30 {
        return true
    } else if two >= 10 && two <= 30 {
        return true
    } else {
        return false
    }
}
twelve(one: 12, two: 22)

func thirteen(input: String) -> Bool {
    var newString = input
    newString.removeFirst()
    if newString.hasPrefix("ix") {
        return true
    } else {
        return false
    }
}
thirteen(input: "Faxing")
thirteen(input: "Mixing")

func fourteen(one: Int, two:Int, three:Int) -> Int {
    if one > two && one > three {
        return one
    } else if two > one && two > three {
        return two
    } else {
        return three
    }
    
    // return max(max(one,two),three)
}
fourteen(one: 2, two: 1, three: 3)

func fifteen(one: Int, two:Int) -> Int {
    if one == two {
        return 0
    }
    return abs(one - 10) < abs(two - 10) ? one : two
}
fifteen(one: 16, two: 4)

func sixteen(one:Int, two:Int) -> Bool {
    let firstRange = 20...30
    let secondRange = 30...40
    
    if firstRange.contains(one) && firstRange.contains(two) || secondRange.contains(one) && secondRange.contains(two) {
        return true
    } else {
        return false
    }
}
sixteen(one: 22, two: 25)

func seventeen(one:Int, two:Int) -> Int {
    let range = 20...30
    
    if one > two && range.contains(one) {
        return one
    } else if two > one && range.contains(two) {
        return two
    } else {
        return 0
    }
}
seventeen(one: 2, two: 12)

func eighteen(one:Int, two:Int) -> Bool {
    guard one < 0, two < 0 else {
        if one % 10 == two % 10 {
            return true
        } else {
            return false
        }
    }
    return false
}
eighteen(one: 5, two: 18)

func ninteen(input:String) -> String {
    var newString = input.lowercased()
    
    if newString.count < 3 {
        return newString
    } else {
        let lastThree = newString.suffix(3)
        newString.removeLast(3)
        return newString + lastThree.uppercased()
    }
}
ninteen(input: "Incorporated")

func twenty(input:String) -> Bool {
    let newString = input
    var hasA: Bool = false
    
    for i in newString {
        guard let new = newString.firstIndex(of: i) else { return false }
        let next = newString.index(after: new)
        
        if i == "a" && newString[next] == "a"{
            hasA = true
        }
    }
    return hasA
}
twenty(input: "aababab")

func twentyOne(input:String) -> String {
    var str1 = ""
    let new = input
    
    for (index, char) in new.enumerated() {
        if index % 2 == 0 {
            str1.append(char)
        }
    }
    return str1
}
twenty(input: "Python")

