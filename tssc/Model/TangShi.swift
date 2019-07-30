//
//  TangShi.swift
//  tssc
//
//  Created by fengde on 2019/7/8.
//  Copyright © 2019 fengde. All rights reserved.
//

import Foundation

struct TangShi: Hashable, Codable, Identifiable {
    var id: Int
    var author: String
    var contents: [String]
    var title: String
    var type: String
}
