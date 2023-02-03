# Challenge 2: Is a string a palindrome?

**Difificulty:** Easy

Write a function that accepts a String as its only parameter, and returns true if the string
reads the same when reversed, ignoring case.

## Cases
  - [x] The string “rotator” should return true
  - [x] The string “Rats live on no evil star” should return true.
  - [x] The string “Never odd or even” should return false; even though the letters are the same in reverse the spaces are in different places.
  - [x] The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards.

## Smart solution:
```swift
func resolve(input: String) -> Bool {
  let lowercased = input.lowercased()
  return lowercased.reversed() == Array(lowercased)
}
```

check resolution [here](https://github.com/PaoloProdossimoLopes/swift-coding-challenges-book/blob/2189a9a832821cad3ddbc1bbaa29dc32000ca69a/SwiftCodingChallenges/SwiftCodingChallenges/Chanllenge02.swift)
