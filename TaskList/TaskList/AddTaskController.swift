//
//  SecondViewController.swift
//  TaskList
//
//  Created by Leandro de Sousa Silva on 17/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import UIKit

class AddTaskController: UIViewController {

    @IBOutlet weak var textTask: UITextField!
    
    @IBAction func salveTask(_ sender: UIButton) {
    let textTaskContent = textTask.text
       if let textContentVerifed = textTaskContent {
               let task = TaskUserDefaults()
               task.salve(task: textContentVerifed)
               textTask.text = ""
           }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

}
}
