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
    
    static func randomUniqueRestaurant(restaurants: [Restaurant], range:Int) -> [Restaurant] {
        var tempRestaurants: [Restaurant] = []
        var restaurant : Restaurant?
        
        for _ in 0..<range {
            repeat {
                restaurant = restaurants[Int(arc4random_uniform(UInt32(restaurants.count)))]
            } while tempRestaurants.contains(where: { $0.name == restaurant?.name })
            
            tempRestaurants.append(restaurant!)
        }
        
        return tempRestaurants
    }

}
