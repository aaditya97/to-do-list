//
//  SecondViewController.swift
//  unique to do list
//
//  Created by admin on 30/03/17.
//  Copyright © 2017 ACE. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var inputtext: UITextField!
    
    @IBAction func savebutton(_ sender: AnyObject) {
        let itemsObjects = UserDefaults.standard.object(forKey: "items")
        
        print (itemsObjects)
        var items:[String]
        
        if let checkObjects = itemsObjects as? [String]{
            items = checkObjects
            items.append(inputtext.text!)
        }
        else{
            items = [inputtext.text!]
        }
        inputtext.text = ""
        UserDefaults.standard.set(items, forKey: "items")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputtext.resignFirstResponder()
        return true
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

