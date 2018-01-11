//
//  ViewController.swift
//  ColdCall
//
//  Created by Lisa Ryland on 1/10/18.
//  Copyright © 2018 Lisa Ryland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var currentName = 0
    var nameArr = [
        "Uyanga", "Courtney", "Bryant", "Cody", "Ryota", "Jay", "Bryant", "Jimmy"
    ]

    @IBAction func coldCallButton(_ sender: UIButton) {
        if currentName < nameArr.count - 1 {
            currentName = Int(arc4random_uniform(UInt32(nameArr.count - 1)) + 1)
            nameLabel.text = nameArr[currentName]
            print(currentName)
        }
        else {
            currentName = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

