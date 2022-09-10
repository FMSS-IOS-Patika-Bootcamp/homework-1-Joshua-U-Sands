//
//  SecondViewController.swift
//  Odev_1
//
//  Created by Joshua Sands on 10.09.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMainSegue"{
            let des = segue.destination as! ViewController
            
            des.enteredName = nameTextField.text ?? ""
            des.enteredSurname = surnameTextField.text ?? ""
            des.enteredId = idTextField.text ?? ""
            des.enteredMail = emailTextField.text ?? ""
        }
    }
    
    
    
    @IBAction func savePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toMainSegue", sender: self)
    }
    

}
