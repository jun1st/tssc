//
//  Data.swift
//  tssc
//
//  Created by fengde on 2019/7/8.
//  Copyright © 2019 fengde. All rights reserved.
//

import Foundation

let tangshiData: [TangShi] = load("tang_300.json")

let top3: [String] = ["李白", "杜甫", "王维", "白居易", "崔灏", "孟浩然", "李商隐", "王昌龄", "杜牧", "陈子昂"]


func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
