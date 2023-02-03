# Challenge 1: Are the letters unique?
**Difificulty:** Easy

Write a function that accepts a String as its only parameter, and returns true if the string has
only unique letters, taking letter case into account.

## Cases
  - [x] The string “No duplicates” should return true.
  - [x] The string “abcdefghijklmnopqrstuvwxyz” should return true.
  - [x] The string “AaBbCc” should return true because the challenge is case-sensitive.
  - [x] The string “Hello, world” should return false because of the double Ls and double Os.

## Smart solution:
```swift
func resolve(input: String) -> Bool {
  Set(input).count == input.count
}
```
