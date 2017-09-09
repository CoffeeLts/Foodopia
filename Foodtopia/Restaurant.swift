//
//  Restaurant.swift
//  Foodtopia
//
//  Created by lily on 2017/9/9.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import Foundation

class Restaurant {
    
    var name = ""
    var type = ""
    var location = ""
    var image = ""
    var isVisited = false
    var phone = ""
    var rating = ""
    
    init(_ name: String, _ location: String,_ phone: String,_ image: String) {
        self.name = name
        self.location = location
        self.phone = phone
        self.image = image
      
    }

    
}
