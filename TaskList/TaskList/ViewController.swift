//
//  ViewController.swift
//  TaskList
//
//  Created by Leandro de Sousa Silva on 17/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cellId = "cellId"
    var taskContent: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        return cell
    }
}

