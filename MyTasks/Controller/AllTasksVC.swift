//
//  AllTasksVC.swift
//  MyTasks
//
//  Created by Stacy on 8.09.22.
//

import Foundation
import UIKit

class AllTasksVC: UIViewController {
    
    
    @IBAction func addBtnPressed(_ sender: UIBarButtonItem) {
        
        self.performSegue(withIdentifier: K.taskEditorSegue, sender: self)
    }
    
}
