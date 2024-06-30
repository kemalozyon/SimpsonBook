//
//  Simpsons.swift
//  SimpsonsBook
//
//  Created by Kemal Özyön on 30.06.2024.
//

import Foundation
import UIKit

class Simpsons {
    
    var image : UIImage
    var name : String
    var age : Int
    var job : String
    init(image : UIImage, name : String, age : Int, job: String) {
        self.image = image
        self.name = name
        self.age = age
        self.job = job
    }
}
