//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Fernando Gomez on 8/2/18.
//  Copyright © 2018 Nando Gomez. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
   
   var text = ""
   var checked = false
   
   func toggleChecked() {
      checked = !checked
   }
}
