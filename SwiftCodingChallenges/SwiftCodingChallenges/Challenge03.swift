import Foundation

enum Challenge03 {
    static func resolve(first: String, second: String) -> Bool {
        let isSameLength = first.count == second.count
        guard isSameLength else { return false }
        
        let firstInput = Set(first)
        let secondInput = Set(second)
        
        var totalFinded = 0
        
        for reference in firstInput {
            for chacked in secondInput where reference == chacked{
                totalFinded += 1
            }
        }
        
        let isEqualTotalFinded = firstInput.count == totalFinded
        return isEqualTotalFinded
    }
    
    static func originalResolution(string1: String, string2: String) -> Bool {
        var check = string2
        
        for letter in string1 {
            if let index = check.firstIndex(of: letter) {
                check.remove(at: index)
            } else {
                return false
            }
        }
        
        return check.count == 0
    }
    
    static func modifiedResolution(string1: String, string2: String) -> Bool {
        guard string1.count == string2.count else { return false }
        
        for letter in string1 where string2.firstIndex(of: letter) == nil {
            return false
        }
        
        return true
    }
    
    static func smart(string1: String, string2: String) -> Bool {
        let array01 = Array(string1)
        let array02 = Array(string2)
        
        return array01.sorted() == array02.sorted()
    }
}
