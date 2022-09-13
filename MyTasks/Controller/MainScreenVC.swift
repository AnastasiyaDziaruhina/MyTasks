//
//  MainScreenVC.swift
//  MyTasks
//
//  Created by Stacy on 7.09.22.
//

import Foundation
import UIKit

class MainScreenVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    @IBAction func allTasksBtnPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.allTasksSegue, sender: self)
    }
    
    @IBAction func settingsBtnPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.settingsSegue, sender: self)
    }
    
}

