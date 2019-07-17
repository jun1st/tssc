//
//  Category.swift
//  tssc
//
//  Created by fengde on 2019/7/17.
//  Copyright © 2019 fengde. All rights reserved.
//

import Foundation

struct Category: Hashable, Codable {
    var name: String
    var summary: String
    var time: String
    var speciality: String
    var property: String
    var rules: [String]
}
