//
//  DetailViewController.swift
//  Project1
//
//  Created by Sean Dickson on 1/1/20.
//  Copyright © 2020 Sean Dickson. All rights reserved.
//

// ViewController for the picture screens

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    // Set the cosmetics for the picture screen
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named:imageToLoad)
        }
    }
    
    // Will let top view appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    // Will hide top view
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
}
