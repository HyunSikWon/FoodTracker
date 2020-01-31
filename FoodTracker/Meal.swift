//
//  Meal.swift
//  FoodTracker
//
//  Created by 원현식 on 2020/01/28.
//  Copyright © 2020 Hyunsik Won. All rights reserved.
//

import Foundation
import UIKit
import os.log

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Archiving Paths
//    static var archiveURL: URL {
//        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
//        return documentDirectory.appendingPathComponent("meals").appendingPathExtension("plist")
//    }
    
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

    //MARK: Encoding & Decoding
//    static func saveToFiles(meals: [Meal]) {
//        let pListEncoder = PropertyListEncoder()
//        let encodedMeals = try? pListEncoder.encode(meals)
//        try? encodedMeals?.write(to: Meal.archiveURL)
//        
//    }
//    
//    static func loadFromFile() -> [Meal] {
//        let pListDecoder = PropertyListDecoder()
//        var mealsArr: [Meal] = []
//        
//        if let retrievedMealsData = try? Data(contentsOf: Meal.archiveURL),
//            let decodedMeals = try? pListDecoder.decode(Array<Meal>.self, from: retrievedMealsData) {
//            mealsArr = decodedMeals
//            
//        }
//        return mealsArr
//    }

}
