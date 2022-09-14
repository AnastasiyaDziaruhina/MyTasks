//
//  TasksTableVC.swift
//  MyTasks
//
//  Created by Stacy on 13.09.22.
//

import Foundation
import UIKit

class TasksTableVC: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tasksTableVC: UITableView!
    
    let data : [K.TaskLabels] = [
    
        K.TaskLabels(taskTitle: "TestTask", projectTitle: "TestProject", taskDate: "Nov 2"),
        K.TaskLabels(taskTitle: "TestTask2", projectTitle: "TestProject2", taskDate: "Nov 22"),
        K.TaskLabels(taskTitle: "TestTask3", projectTitle: "TestProject3", taskDate: "Nov 23")
    ]
    
    
    override func viewDidLoad() {
        
        tasksTableVC.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tasks = data[indexPath.row]
        let cell = tasksTableVC.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskTableViewCell
        cell.taskTitle.text = tasks.taskTitle
        cell.projectTitle.text = tasks.projectTitle
        cell.taskDate.text = tasks.taskDate
        
        return cell
    }
    
    @IBAction func editBtnPressed(_ sender: UIButton) {
        
     self.performSegue(withIdentifier: K.taskEditorSegue, sender: self)

    }
    
    
    @IBAction func deleteBtnPressed(_ sender: UIButton) {
    }
    
}
