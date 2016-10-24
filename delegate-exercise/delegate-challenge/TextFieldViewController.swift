//
//  TextFieldViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var textField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    textField.delegate = self
  }
  
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if ("a"..."z").contains(string){
            var chars = (textField.text?.characters)!
            var newChars = Array(string.characters)
            var uppercaseChar = newChars[0]
            
            chars.append()
            textField.text?.characters = chars
            return true
        }else{
            return false
        }
    }
}
