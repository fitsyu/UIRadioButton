//
//  ViewController.swift
//  UIRadioButton
//
//  Created by fitsyu on 11/08/2016.
//  Copyright (c) 2016 fitsyu. All rights reserved.
//

import UIKit
import UIRadioButton

class ViewController: UIViewController {

    @IBOutlet weak var bt1: UIRadioButton!
    @IBOutlet weak var bt2: UIRadioButton!
    @IBOutlet weak var bt3: UIRadioButton!
    
    @IBOutlet weak var bt4: UIRadioButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create group for bt1, bt2, bt3
        let group = UIRadioButtonGroup()
        group.add(bt1)
        group.add(bt2)
        group.add(bt3)
        
        // to start off
        group.deselectAll()
        
        // preselect one
        group.select(bt3)
    }
    
    @IBAction func dumpBt4Value(sender: UIRadioButton) {
        print(bt4.selected)
    }

}

