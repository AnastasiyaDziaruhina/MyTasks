//
//  AllTasksVC.swift
//  MyTasks
//
//  Created by Stacy on 8.09.22.
//

import Foundation
import UIKit

class AllTasksVC: UIViewController {
    
    @IBOutlet weak var containerStatuses: UIView!
    @IBOutlet weak var containerTable: UIView!
    
    var tasksTableVC : TasksTableVC?
    
    override func viewDidLoad() {
        
        navigationItem.title = "Список задач"
        containerStatuses.isHidden = false
        containerTable.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.allTasksSegue {
                if let vc = segue.destination as? TasksTableVC {
                    self.tasksTableVC = vc
                }
            }
        }
    
    @IBAction func addBtnPressed(_ sender: UIBarButtonItem) {
        
        self.performSegue(withIdentifier: K.taskEditorSegue, sender: self)
    }
    
}
