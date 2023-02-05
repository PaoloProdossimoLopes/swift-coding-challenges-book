
enum Challenge06 {
    static func removeDuplication(_ input: String) -> String {
        var uniqued = ""
        
        for letter in input {
            let alreadContains = uniqued.contains(letter)
            guard !alreadContains else { continue }
            uniqued.append(letter)
        }
        
        return uniqued
    }
}
