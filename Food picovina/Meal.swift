//
//  Meal.swift
//  Food picovina
//
//  Created by Martin Gábor on 01/12/2017.
//  Copyright © 2017 Martin Gábor. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initializer
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        //Empty name string
        guard !name.isEmpty else {
            return nil
        }
        
        //negative rating or rating too high
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        //Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
