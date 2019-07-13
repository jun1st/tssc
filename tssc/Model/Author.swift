//
//  Author.swift
//  tssc
//
//  Created by feng qijun on 2019/7/13.
//  Copyright © 2019 fengde. All rights reserved.
//

import Foundation
import SwiftUI

struct Author: Hashable, Codable {
    var name: String
    var nickname: String
    var bgColors: [Double]
    var baikeUrl: String
    
    func bgRed() -> String {
        return String(bgColors[0])
    }
    
    func bgGreen() -> String {
        return String(bgColors[1])
    }
    
    func bgBlue() -> String {
        return String(bgColors[2])
    }
}
