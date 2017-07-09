import Foundation;

// Enter your code here

let stringInput = readLine()!

let charSet = CharacterSet(charactersIn: stringInput.lowercased())

let alphabet = "abcdefghijklmnopqrstuvwxyz"

let result = alphabet.components(separatedBy: charSet).joined()

switch result.characters.count {
case 0:
    print("pangram")
default:
    print("not pangram")
}
