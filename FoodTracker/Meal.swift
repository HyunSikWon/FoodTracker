//
//  Meal.swift
//  FoodTracker
//
//  Created by 원현식 on 2020/01/28.
//  Copyright © 2020 Hyunsik Won. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        
        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
