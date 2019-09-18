//
//  SecondViewController.swift
//  TaskList
//
//  Created by Leandro de Sousa Silva on 17/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var salveTask: String?
    
    @IBOutlet weak var textTask: UITextField!
    @IBAction func salveTask(_ sender: UIButton) {
     let textTaskContent = textTask.text
        if let textContentVerifed = textTaskContent {
            salveTask = textContentVerifed
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

}
}
