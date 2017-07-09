import Foundation;

// Enter your code here

let input = readLine()!

let words = input.components(separatedBy: CharacterSet.uppercaseLetters)
print(words.count)