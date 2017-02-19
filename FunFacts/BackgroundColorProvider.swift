//
//  BackgroundColorProvider.swift
//  FunFacts
//
//  Created by Daniel Santos on 2/19/17.
//  Copyright © 2017 Daniel Santos. All rights reserved.
//

import UIKit
import GameKit

struct BackgroundColorProvider {
    var previousIndex: Int?
    let colors = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), //teal color
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0), //yellow color
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0), //red color
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), //orange color
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0), //dark color
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0), //purple color
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0), //green color
    ]
    
    mutating func generateNumber() -> Int {
        var randomNumber: Int = GKRandomSource.sharedRandom().nextInt(upperBound:self.colors.count)
        
        if previousIndex != nil {
            while self.previousIndex == randomNumber {
                randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound:self.colors.count)
            }
        } else {
            self.previousIndex = randomNumber
            return randomNumber
        }
        self.previousIndex = randomNumber
        return randomNumber
    }
    
    mutating func randomColor() -> UIColor {
        return self.colors[self.generateNumber()]
    }
}
