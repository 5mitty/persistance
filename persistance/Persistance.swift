//
//  Persistance.swift
//  persistance
//
//  Created by Jacob Smith on 2/20/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import Foundation

class Point: Codable {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    enum CodingKeys: String, CodingKey {
        case x
        case y
    }
    
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        x = try container.decode(Int.self, forKey: .x)
        y = try container.decode(Int.self, forKey: .y)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(x, forKey: .x)
        try container.encode(y, forKey: .y)
    }
}
