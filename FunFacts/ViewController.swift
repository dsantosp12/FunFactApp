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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.funFactLabel.text = "An interesting fact!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        self.funFactLabel.text = "You pressed me!"
    }

}

