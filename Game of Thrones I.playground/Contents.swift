import Foundation;

// Enter your code here

let input = readLine()!
var evensOdds = (evens:0,odds:0)

func gameOfThrones(_ input: String) -> String {
    
    let s = Array(input.characters.map({ String($0) }))
    let sSet = NSCountedSet(array: s)
    
    for char in sSet {
        if sSet.count(for: char) % 2 == 0 {
            evensOdds.evens += 1
            
        } else {
            evensOdds.odds += 1
        }
    }
    
    if s.count % 2 == 0{  // even
        return evensOdds.odds == 0 ? "YES" : "NO"
        
    } else {  // odd
        return evensOdds.odds == 1 ? "YES" : "NO"
    }
}

print(gameOfThrones(input))
