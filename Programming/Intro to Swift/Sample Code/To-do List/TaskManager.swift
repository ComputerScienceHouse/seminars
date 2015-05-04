//
//  TaskManager.swift
//  To-do List
//
//  Created by Harlan Haskins on 5/2/15.
//  Copyright (c) 2015 harlanhaskins. All rights reserved.
//

import UIKit

struct Task {
    let description: String
    var completed: Bool
}

class TaskManager: NSObject {
    var tasks = [Task]()
    
    func addTask(description: String) {
        let newTask = Task(description: description, completed: false)
        self.tasks.append(newTask)
    }
}
