//
//  AAProfanityFilter+Helper.swift
//  AAProfanityFilter
//
//  Created by M. Ahsan Ali on 25/02/2019.
//

import Foundation

public extension String {
    
    public func aa_profanityFiltered(_ replaceWith: String = "*") -> String {
        
        let contains = AAProfanityFilter.words.contains {
            self.range(of: $0, options: .caseInsensitive) != nil
        }
        guard contains else {
            return self
        }
        return String(repeating: replaceWith, count: self.count)
    }
    
}
