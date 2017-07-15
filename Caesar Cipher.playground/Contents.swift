import Foundation

// Enter your code here

let n = Int(readLine()!)!
let s = readLine()!
var k = Int(readLine()!)!

var result:[Int] = []

// convert from String to Unicode
var sMap = s.characters.map({
    String($0).unicodeScalars.first!.value
}).map({
    Int($0)
})

k = k % 26

for num in sMap {
    
    var newnum = 0
    
    if 65...90 ~= num || 97...122 ~= num {
        
        newnum = num + k
        
        if 65...90 ~= num {
            newnum = newnum > 90 ? 64 + newnum - 90 : newnum
        }
        
        if 97...122 ~= num {
            newnum = newnum > 122 ? 96 + newnum - 122 : newnum
        }
        
    } else {
        newnum = num
    }
    
    result.append(newnum)
}

// convert from Unicode to String
print(result.map({ String(describing: UnicodeScalar($0)!) }).joined())