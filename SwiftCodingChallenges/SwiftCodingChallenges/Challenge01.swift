import Foundation

enum Challenge01 {
    static func resolve(input: String) -> Bool {
        var observe = input.first!
        var observeOccurencies = 0
        
        for observedLetter in input {
            observe = observedLetter
            observeOccurencies = 0
            
            for letter in input {
                guard observe == letter else { continue }
                observeOccurencies += 1
            }
            
            let isDuplicated = observeOccurencies > 1
            if isDuplicated { break }
        }
        
        let isUnique = observeOccurencies == 1
        return isUnique
    }
    
    static func resolution(input: String) -> Bool {
        var usedLetters = [Character]()
        
        for letter in input {
            if usedLetters.contains(letter) {
                return false
            }
            
            usedLetters.append(letter)
        }
        
        return true
    }
    
    static func smartResolution(input: String) -> Bool {
        Set(input).count == input.count
    }
}
