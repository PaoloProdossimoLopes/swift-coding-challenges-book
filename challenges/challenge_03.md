# Challenge 3: Do two strings contain the same characters?

**Difificulty:** Easy

Write a function that accepts two String parameters, and returns true if they contain the
same characters in any order taking into account letter case.

## Cases
  - [x] The strings “abca” and “abca” should return true.
  - [x] The strings “abc” and “cba” should return true
  - [x] The strings “ a1 b2 ” and “b1 a2” should return true.
  - [x] The strings “abc” and “abca” should return false.
  - [x] The strings “abc” and “abca” should return false.
  - [x] The strings “abc” and “cbAa” should return false.

## Smart solution:
```swift
func resolve(string1: String, string2: String) -> Bool {
  let array1 = Array(string1)
  let array2 = Array(string2)
  return array1.sorted() == array2.sorted()
}
```

check resolution [here](https://github.com/PaoloProdossimoLopes/swift-coding-challenges-book/blob/1077960cc1063cc69f04856c232b807f85a05ef6/SwiftCodingChallenges/SwiftCodingChallenges/Challenge03.swift).
