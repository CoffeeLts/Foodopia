//
//  RandomRestaurant.swift
//  Foodtopia
//
//  Created by kiam on 2017/9/10.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import Foundation
import UIKit

class RandomRestaurant {
    
    static func randomRestaurant(restaurants: [Restaurant]) -> Restaurant {
        let restaurant = restaurants[Int(arc4random_uniform(UInt32(restaurants.count)))]
        
        return restaurant
    }
}
