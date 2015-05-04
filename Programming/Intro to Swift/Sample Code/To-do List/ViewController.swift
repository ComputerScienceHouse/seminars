//
//  ViewController.swift
//  To-do List
//
//  Created by Harlan Haskins on 5/2/15.
//  Copyright (c) 2015 harlanhaskins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var descriptionTextField: UITextField!
    var taskManager: TaskManager?

    @IBAction func didTapAdd(sender: UIBarButtonItem) {
        if let taskManager = self.taskManager {
            taskManager.addTask(self.descriptionTextField.text)
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

