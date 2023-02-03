import Foundation

enum Chanllenge02 {
    static func resolve(input: String) -> Bool {
        let loweredCaseInput = input.lowercased()
        let listOfCaracter = Array(loweredCaseInput)
        let numberOfCharacters = input.count - 1
        var linearIndex = 0
        for revesedIndex in stride(from: numberOfCharacters, to: 0, by: -1) {
            defer {
                linearIndex += 1
            }
            
            let opositeCharacter = listOfCaracter[revesedIndex]
            let linearCharater = listOfCaracter[linearIndex]
            let opositeIsEqual = opositeCharacter == linearCharater
            guard opositeIsEqual else {
                return false
            }
        }
        
        return true
    }
    
    static func resolution(input: String) -> Bool {
        let lowercased = input.lowercased()
        return lowercased.reversed() == Array(lowercased)
    }
}
