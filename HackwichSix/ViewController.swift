//
//  ViewController.swift
//  HackwichSix
//
//  Created by Keola Iseri on 3/3/20.
//  Copyright © 2020 Keola Iseri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Array to display in Table view
    var favoriteColorsArray = ["Blue","Red", "Green","Orange"]
    //Problem set arrays
    var countriesArray = ["Korea", "Italy", "Spain"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countriesArray.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        let text = countriesArray[indexPath.row]
        cell?.textLabel?.text = text
        return cell!

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

