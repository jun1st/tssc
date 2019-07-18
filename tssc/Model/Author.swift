//
//  Author.swift
//  tssc
//
//  Created by fengde on 2019/7/12.
//  Copyright © 2019 fengde. All rights reserved.
//

import Foundation

struct Author: Hashable, Codable {
    var name: String
    var nickname: String
    var bgColors: [Int]
    var summary: String
    var baikeUrl: String
    
    func red() -> Double {
        return Double(bgColors[0])
    }
    
    func green() -> Double {
        return Double(bgColors[1])
    }
    
    func blue() -> Double {
        return Double(bgColors[2])
    }
}
