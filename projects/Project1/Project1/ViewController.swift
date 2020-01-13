//
//  ViewController.swift
//  Project1
//
//  Created by Sean Dickson on 12/30/19.
//  Copyright © 2019 Sean Dickson. All rights reserved.
//

// UIKit == "User Interface Kit": Responsible for all these nice methods we call upon
import UIKit

class ViewController: UITableViewController { // 'ViewController' inherits from a UIKit viewController type -- in this case, 'UITableViewController'
    
    var pictures = [String]()
    
    // 'viewDidLoad()' is like main! It is the control center for the view of your app
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default // Creating a "file manager" -- object which can search through directories
        let path = Bundle.main.resourcePath! // Not sure how this works! But it creates the path to 'Content' dir
        let items = try! fm.contentsOfDirectory(atPath: path) // Creates a collection of the contents of a certain dir -- "try!" was used to (....)?
    
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
    }
    
    // Determines num of rows displayed on the screen -- in this case, the num of items in 'pictures'
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    // Assigns names to each table cell, and determines cell type -- in this case, 'dequeueReusableCell'
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath) // 'dequeueReusableCell' llows cells to be reused when scrolled past instead of creating new cells everytime.
        cell.textLabel?.text = pictures[indexPath.row] // creates a text lable (if one can be made... '?') based on picture
        return cell
    }
    
    
}

