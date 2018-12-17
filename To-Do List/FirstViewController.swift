//
//  FirstViewController.swift
//  To-Do List
//
//  Created by midea on 12/10/18.
//  Copyright © 2018 Hogwarts School of Witchcraft and Wizardry. All rights reserved.
//

import UIKit
  var list = ["Do homework", "Sleep", "Book car to airport"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var MyViewController: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            list.remove(at: indexPath.row)
            MyViewController.reloadData()
        }
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        MyViewController.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //UITableView.estimatedRowHeight = 80;
        //TableView.rowHeight = UITableView.automaticDimension;
    }


}

