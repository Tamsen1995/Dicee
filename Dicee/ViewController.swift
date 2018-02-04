//
//  ViewController.swift
//  Dicee
//
//  Created by Nguyen Tam Anh Bui on 2/4/18.
//  Copyright © 2018 Nguyen Tam Anh Bui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollDice(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages () {
        let diceNumber1 = Int(arc4random_uniform(6))
        let diceNumber2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[diceNumber1])
        diceImageView2.image = UIImage(named: diceArray[diceNumber2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

