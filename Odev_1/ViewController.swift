//
//  ViewController.swift
//  Odev_1
//
//  Created by Joshua Sands on 10.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var enteredName = ""
    var enteredSurname = ""
    var enteredId = ""
    var enteredMail = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Name : \(enteredName)"
        surnameLabel.text = "Surname : \(enteredSurname)"
        idLabel.text = "ID Number : \(enteredId)"
        emailLabel.text = "E-Mail : \(enteredMail)"
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toQuestionsSegue", sender: self)
    }
    
}

