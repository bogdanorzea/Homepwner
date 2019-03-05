//
//  Item.swift
//  Homepwner
//
//  Created by Bogdan Orzea on 2/24/19.
//  Copyright © 2019 Bogdan Orzea. All rights reserved.
//

import UIKit

class Item: NSObject {
    var name: String
    var valueInDolars: Int
    var serialNumber: String?
    var dateCreated: Date
    let itemKey: String
    
    init(name: String, serialNumber: String?, valueInDolars: Int) {
        self.name = name
        self.valueInDolars = valueInDolars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        self.itemKey = UUID().uuidString
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first
            let randomValue = Int(arc4random_uniform(100))
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDolars: randomValue)
        } else {
            self.init(name: "", serialNumber: nil, valueInDolars: 0)
        }
    }
}
