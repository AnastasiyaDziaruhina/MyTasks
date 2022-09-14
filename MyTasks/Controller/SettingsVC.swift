//
//  SettingsVC.swift
//  MyTasks
//
//  Created by Stacy on 8.09.22.
//

import Foundation
import UIKit

class SettingsVC: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var settingsTableView: UITableView!
    
    let data: [K.SettingsLabels] = [
        
        K.SettingsLabels(settingTitle: "URL сервера:", settingsInput: "Введите URL сервера"),
        K.SettingsLabels(settingTitle: "Максимальное количество записей в списках:", settingsInput: "Введите максимальное значение"),
        K.SettingsLabels(settingTitle: "Количество дней по умолчанию между начальной и конечной датами в задаче:", settingsInput: "Введите количество дней")
    ]
    
    override func viewDidLoad() {
        navigationItem.title = "Настройки"
        settingsTableView.dataSource = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let settings = data[indexPath.row]
        let cell = settingsTableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as! SettingsTableViewCell
        cell.settingLabelText?.text = settings.settingTitle
        cell.settingsTextField?.placeholder = settings.settingsInput
        
        
        return cell
    }
    
    @IBAction func saveBtnPressed(_ sender: UIBarButtonItem) {
        
        
    }
    
}
