# Challenge 5: Count the characters

**Difificulty:** Easy

Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.

## Cases
  - [x] The letter “a” appears twice in “The rain in Spain”
  - [x] The letter “i” appears four times in “Mississippi”.
  - [x] The letter “i” appears three times in “Hacking with Swift”.

## Smart solution:
```swift
func challenge5b(input: String, count: Character) -> Int {
  return input.reduce(0) {
    $1 == count ? $0 + 1 : $0
  }
}

func challenge5d(input: String, count: String) -> Int {
  let modified = input.replacingOccurrences(of: count, with: "")
  return input.count - modified.count
}
```

check resolution [here](https://github.com/PaoloProdossimoLopes/swift-coding-challenges-book/blob/1def16becd24a8d590159c222436e0e391e4c454/SwiftCodingChallenges/SwiftCodingChallenges/Challege05.swift).
