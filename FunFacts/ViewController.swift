//
//  ViewController.swift
//  FunFacts
//
//  Created by Daniel Santos on 2/17/17.
//  Copyright © 2017 Daniel Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet means interface builder outler
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var showFactButton: UIButton!
    
    let factProvider: FactProvider = FactProvider()
    var colorProvider: BackgroundColorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        self.funFactLabel.text = self.factProvider.randomFact()
        let randomColor: UIColor = self.colorProvider.randomColor()
        
        self.view.backgroundColor = randomColor
        self.showFactButton.tintColor = randomColor
    }

}

