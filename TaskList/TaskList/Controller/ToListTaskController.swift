//
//  ViewController.swift
//  TaskList
//
//  Created by Leandro de Sousa Silva on 17/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import UIKit

class ToListTaskController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cellId = "cellId"
    var taskContent: String?
    var tasks: [String] = []
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    fileprivate func atualizeListTask() {
        let taskDates = TaskUserDefaults()
        tasks = taskDates.toList()
        table.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        atualizeListTask()
    }
    
    //deletar as cell, outras propriedades tamb[em de estilo
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
        let taskRemove = TaskUserDefaults()
            taskRemove.remove(index: indexPath.row)
            atualizeListTask()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
}

