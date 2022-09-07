//
//  ViewController.swift
//  MyTasks
//
//  Created by Stacy on 6.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        versionLabel.text = String("Версия: 1.0, 5000мс")
        
        // Do any additional setup after loading the view.
    }


}

