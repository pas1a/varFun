//
//  ViewController.swift
//  varFun
//
//  Created by JOHN GARIEPY on 8/26/24.
//

import UIKit

//steps to get return key to work
// 1) add a delegate
// 2) attach delagate
// 3) write textfield should return funtion

class ViewController: UIViewController,UITextFieldDelegate {
    let pony = 6 //(Using type inference)
    var dog = 7.5
    var cat: Int? //Declaring an opitional
    var horse: Double! // decclaring non optional cant be nill
    var ant: String = ""// declaring a variable(must initalize in init)
    @IBOutlet weak var textField1: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.delegate = self
        
        print(Double(pony) + dog)
    // forced unwrap with !
     //   print(cat! + 5)
        
        // safe unwrap with if statment
        if let blah = cat{
            print(blah+5)
            // 2 ways to make a non string as a string (Double, int, Char, etc)
            print("cat is " + String(blah))
            print("cat is \(blah)") // String interpolation
            
        }
        else{
            print("Nothing in cat")
        }
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func buttono1(_ sender: UIButton) {
// gets text from field
        // saying there will be something in the text field
        var pig = textField1.text!
        // nil coalescing(giving a defallt value if it is null
        var frog = Int(pig) ?? 0
        print (Int(frog) + 5)
        textField1.resignFirstResponder()
        // if your bitch got a dick than it aint a bitch
    }
    
    // this get automaticly called when user hits return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField1.resignFirstResponder()
        
    }

}

