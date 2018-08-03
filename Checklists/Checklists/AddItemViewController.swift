//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Fernando Gomez on 8/2/18.
//  Copyright © 2018 Nando Gomez. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate: class {
   func addItemViewControllerDidCancel(_ controller: AddItemViewController)
   func addItemViewController(_ controller: AddItemViewController, didFinishAdding item: ChecklistItem)
   func addItemViewController(_ controller: AddItemViewController, didFinishEditing item: ChecklistItem)
}

class AddItemViewController: UITableViewController, UITextFieldDelegate {
   
   @IBOutlet weak var textField: UITextField!

   @IBOutlet weak var cancelBarButton: UIBarButtonItem!
   
   @IBOutlet weak var doneBarButton: UIBarButtonItem!
   
   var itemToEdit: ChecklistItem?
   
   // This is the delegate property created
   weak var delegate: AddItemViewControllerDelegate?
   
   override func viewDidLoad() {
        super.viewDidLoad()
      
      navigationItem.largeTitleDisplayMode = .never
      textField.delegate = self
      
      if let item = itemToEdit {
         title = "Edit Item"
         textField.text = item.text
      }
    }

   
   override func viewWillAppear(_ animated: Bool) {
      textField.becomeFirstResponder()
      doneBarButton.isEnabled = false
   }
   
   @IBAction func cancel() {
//      navigationController?.popViewController(animated: true)
      delegate?.addItemViewControllerDidCancel(self)
   }
   
   @IBAction func done() {
//      navigationController?.popViewController(animated: true)
      print(textField.text!)
      
      if let itemToEdit = itemToEdit {
         itemToEdit.text = textField.text!
         delegate?.addItemViewController(self, didFinishEditing: itemToEdit)
      } else {
      
      let item = ChecklistItem()
      item.text = textField.text!
      item.checked = false
      
      delegate?.addItemViewController(self, didFinishAdding: item)
      }
   }
   
   override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
      return nil
   }
   
   func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
      let oldText = textField.text!
      let stringRange = Range(range, in:oldText)
      
      
      let newText = oldText.replacingCharacters(in: stringRange!, with: string)
      
      if newText.isEmpty {
         doneBarButton.isEnabled = false
      } else {
         doneBarButton.isEnabled = true
      }
      return true
   }
}
