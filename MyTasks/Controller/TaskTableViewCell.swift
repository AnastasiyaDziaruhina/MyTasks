//
//  TaskTableViewCell.swift
//  MyTasks
//
//  Created by Stacy on 14.09.22.
//
import Foundation
import UIKit

class TaskTableViewCell: UITableViewCell {
    
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var projectTitle: UILabel!
    @IBOutlet weak var taskDate: UILabel!
    
    @IBOutlet weak var editBtnPressed: UIButton!
    @IBOutlet weak var deleteBtnPressed: UIButton!
    

}
