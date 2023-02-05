enum Challege05 {
    static func count(in text: String, character: Character) -> Int {
        var total = 0
        text.forEach {
            if $0 == character {
                total += 1
            }
        }
        return total
    }
    
    static func smart(input: String, count: Character) -> Int {
        return input.reduce(0) { partialResult, char in
            char == count ? partialResult + 1 : partialResult
        }
    }
    
    static func other(input: String, count: String) -> Int {
        let modifed = input.replacingOccurrences(of: count, with: "")
        return input.count - modifed.count
    }
}
