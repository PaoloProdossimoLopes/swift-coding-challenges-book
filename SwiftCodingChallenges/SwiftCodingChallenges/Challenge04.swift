extension String {
    func fuzzyContains(_ word: String) -> Bool {
        let words = self.lowercased()
            .replacingOccurrences(of: ",", with: "")
            .split(separator: " ")
            
        for w in words where w == word.lowercased() {
            return true
        }
        
        return false
    }
    
    func fuzzyContainsResolution(_ string: String) -> Bool {
        return self.uppercased().range(of: string.uppercased()) != nil
    }
    
    func fuzzyContainsSmartResolution(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}
