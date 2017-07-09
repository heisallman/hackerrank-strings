import Foundation;

// Enter your code here

let t = Int(readLine()!)!

var left = [String]()
var right = [String]()
var center = ""
var indexes = (0,0)

func palindromeIndex(_ input:String) -> Int {
    
    let s = Array(input.characters.map({ String($0) }))
    
    // character = 1?
    guard s.count > 1 else { return -1 }
    
    // only one type of character?
    guard Set(s).count > 1 else { return -1 }
    
    left = calculateTwoHalves(s).0
    right = calculateTwoHalves(s).1
    
    // string is already a palindrome
    if left == right { return -1 }
    
    
    // test out indexes of possible wrongs
    for (index,char) in left.enumerated() {
        if char != right[index] {
            indexes = (index,((s.count - 1) - index))
            break
        }
    }
    
    let test1 = testTwoPossibilties(s, index: indexes.0)
    let test2 = testTwoPossibilties(s, index: indexes.1)
    
    return max(test1, test2)
}



func testTwoPossibilties(_ s:[String], index:Int ) -> Int {
    
    var testingS = s
    testingS.remove(at: index)
    
    left = calculateTwoHalves(testingS).0
    right = calculateTwoHalves(testingS).1
    
    if left == right {
        return index
    }
    
    return -1
}



func calculateTwoHalves(_ s:[String]) -> ([String],[String]){
    
    left = [String]()
    right = [String]()
    
    // calculate midpoint of array
    let midPoint = s.count / 2
    
    // create left and right arrays
    if s.count % 2 == 0 {   // even arrays
        left = Array(s[0..<midPoint])
        right = Array(s[midPoint..<s.endIndex].reversed())
        
    } else {    // odd arrays
        left = Array(s[0..<midPoint])
        right = Array(s[(midPoint + 1)..<s.endIndex].reversed())
        center.append(String(s[midPoint]))
    }
    
    return (left,right)
}


for _ in 1...t {
    let s = String(readLine()!)!
    print(palindromeIndex(s))
}



