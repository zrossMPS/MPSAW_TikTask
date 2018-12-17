//
//  SecondViewController.swift
//  To-Do List
//
//  Created by midea on 12/10/18.
//  Copyright © 2018 Hogwarts School of Witchcraft and Wizardry. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    @IBAction func addItem(_ sender: Any) {
        if (input.text != "") {
            list.append(input.text!)
            input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

