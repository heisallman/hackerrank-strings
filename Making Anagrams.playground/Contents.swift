import Foundation;

// Enter your code here

let a = readLine()!
let b = readLine()!

let aMap = a.characters.map({ String($0) })
let bMap = b.characters.map({ String($0) })

let aSet = Set(aMap)
let bSet = Set(bMap)

let aCSet = NSCountedSet(array: aMap)
let bCSet = NSCountedSet(array: bMap)
let totalCSet = NSCountedSet(array: aMap + bMap)

let commonChar = aSet.intersection(bSet)
var total = 0

for char in totalCSet {
    if !commonChar.contains(char as! String) {
        total += totalCSet.count(for: char)
        
    } else {
        if aCSet.count(for: char) != bCSet.count(for: char) {
            total += (max(aCSet.count(for: char), bCSet.count(for: char)) - min(aCSet.count(for: char), bCSet.count(for: char)))
        }
    }
}

print(total)

