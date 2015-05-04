//
//  TaskListViewController.swift
//  To-do List
//
//  Created by Harlan Haskins on 5/2/15.
//  Copyright (c) 2015 harlanhaskins. All rights reserved.
//

import UIKit

class TaskListViewController: UITableViewController {
    let taskManager = TaskManager()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let
            navController = segue.destinationViewController as? UINavigationController,
            newTaskViewController = navController.topViewController as? ViewController {
                newTaskViewController.taskManager = self.taskManager
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.taskManager.tasks.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TaskCell", forIndexPath: indexPath) as! UITableViewCell
        let task = self.taskManager.tasks[indexPath.row]
        
        cell.textLabel?.text = task.description
        cell.accessoryType = task.completed ? .Checkmark : .None
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var task = self.taskManager.tasks[indexPath.row]
        task.completed = !task.completed
        self.taskManager.tasks[indexPath.row] = task
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
}
