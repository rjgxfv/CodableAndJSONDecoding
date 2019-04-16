//
//  InventoryLoader.swift
//  CodeableAndJSONDecoding
//
//  Created by Robert Graman on 4/16/19.
//  Copyright © 2019 Robert. All rights reserved.
//

import Foundation

class InventoryLoader{
    class func load(jsonFilename: String) -> ItemInventory?{
        var itemInventory: ItemInventory?
        let jsonDecoder = JSONDecoder()
        if let jsonURL = Bundle.main.url(forResource: jsonFilename, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonURL){
            itemInventory = try? jsonDecoder.decode(ItemInventory.self, from: jsonData)
        }
        return itemInventory
    }
}
