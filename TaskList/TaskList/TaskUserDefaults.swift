//
//  TaskUserDefaults.swift
//  TaskList
//
//  Created by Leandro de Sousa Silva on 17/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import Foundation
import UIKit

class TaskUserDefaults {
    
    private let key = "KeyTask"
    private var listTask: Array<String> = []
    
    
    func salve(task: String){
        
        //recuperar valores
        listTask = toList()
        
        //salvar tarefa 
        listTask.append(task)
        UserDefaults.standard.set(listTask, forKey: key)
    }
    
    func toList()-> Array<String>{
        let dates = UserDefaults.standard.object(forKey: key)
        if dates != nil{
            return dates as! Array<String>
        }else {
            return []
        }
    }
}
