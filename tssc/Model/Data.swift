//
//  Data.swift
//  tssc
//
//  Created by fengde on 2019/7/8.
//  Copyright © 2019 fengde. All rights reserved.
//

import Foundation

let tangshiData: [TangShi] = load("tang_300.json")

let wuyanJueJu: [TangShi] = tangshiData.filter { $0.type == "五言古诗" }

let qiyan: [TangShi] = tangshiData.filter { $0.type == "七言古诗" }

let authors: [Author] = load("tang_300_authors.json")

let types: [String] = Array(Set(tangshiData.map { $0.type }))


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
