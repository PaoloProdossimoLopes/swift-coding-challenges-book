# Challenge 4: Does one string contain another?

**Difificulty:** Easy

Write your own version of the contains() method on String that ignores letter case, and
without using the existing contains() method.

## Cases
  - [x] The code "Hello, world".fuzzyContains("Hello") should return true
  - [x] The code "Hello, world".fuzzyContains("WORLD") should return true
  - [x] The code "Hello, world".fuzzyContains("Goodbye") should return false

## Smart solution:
```swift
extension String {
  func fuzzyContains(_ string: String) -> Bool {
    return range(of: string, options: .caseInsensitive) != nil
  }
}
```

check resolution [here](https://github.com/PaoloProdossimoLopes/swift-coding-challenges-book/blob/475f7a364e84e4c81c2edccaea6293cec92b228b/SwiftCodingChallenges/SwiftCodingChallenges/Challenge04.swift).
