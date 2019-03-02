//
//  AAProfanityFilter.swift
//  AAProfanityFilter
//
//  Created by M. Ahsan Ali on 25/02/2019.
//

import Foundation

open class AAProfanityFilter: NSObject {
    
    static var words: [String] {
        let fileName = Bundle(for: AAProfanityFilter.self).path(forResource: "ProfanityWords", ofType: "txt")!
        let wordStr = try? String(contentsOfFile: fileName)
        let wordArray = wordStr!.components(separatedBy: CharacterSet.newlines)
        return wordArray
    }
}

