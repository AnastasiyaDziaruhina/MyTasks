//
//  TaskEditVC.swift
//  MyTasks
//
//  Created by Stacy on 8.09.22.
//

import Foundation
import UIKit

class TaskEditVC: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var editorTableView: UITableView!
    
    let data: [K.EditorLabels] = [
    
        K.EditorLabels(editorTitle: "Название", editorInput: "Введите название задачи"),
        K.EditorLabels(editorTitle: "Название проекта", editorInput: "Введите название проекта"),
        K.EditorLabels(editorTitle: "Расчетное время выполнения задачи", editorInput: "Введите расчетное время"),
        K.EditorLabels(editorTitle: "Дата начала", editorInput: "Введите дату начала"),
        K.EditorLabels(editorTitle: "Дата окончания", editorInput: "Введите дату окончания"),
        K.EditorLabels(editorTitle: "Статус", editorInput: "Введите статус задачи"),
        K.EditorLabels(editorTitle: "ФИО сотрудника", editorInput: "Введите ФИО сотрудника")
    ]
    
    
    override func viewDidLoad() {
        
        navigationItem.title = "Новая задача"
        editorTableView.dataSource = self
    }
    
    
    @IBAction func saveBtnPressed(_ sender: UIBarButtonItem) {
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let taskSettings = data[indexPath.row]
        let cell = editorTableView.dequeueReusableCell(withIdentifier: "taskEditCell", for: indexPath) as! TaskEditTableViewCell
        cell.taskEditorTitle.text = taskSettings.editorTitle
        cell.editorTextField.text = taskSettings.editorInput

        return cell
        
    }
    
}
