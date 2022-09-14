//
//  Constants.swift
//  MyTasks
//
//  Created by Stacy on 8.09.22.
//

import Foundation

struct K {
    
    static let allTasksSegue = "goToAllTasks"
    static let settingsSegue = "goToSettings"
    static let taskEditorSegue = "goToTaskEditor"
    
    struct SettingsLabels {
         let settingTitle: String
         let settingsInput: String
    }
    
    struct TaskLabels {
        let taskTitle: String
        let projectTitle: String
        let taskDate: String
    }
    
    
    struct EditorLabels {
        
        let editorTitle: String
        let editorInput: String
        
//        let taskTitle: String
//        let projectTitle: String
//        let estimatedTime: String
//        let startDate: String?
//        let endDate: String?
//        let status: String
//        let workerName: String

    }
}
