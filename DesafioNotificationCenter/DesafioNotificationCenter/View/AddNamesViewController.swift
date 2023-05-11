//
//  Tela02ViewController.swift
//  DesafioNotificationCenter
//
//  Created by Wolfgang Florian Covi on 08/05/23.
//

import UIKit

class AddNamesViewController: UIViewController {

    private var setName: ViewModel = ViewModel()
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
 
    @IBAction func addNameTappedButton(_ sender: Any) {
       
        NotificationCenter.default.post(name: , object: nil)
        dismiss(animated: true)
        
        if let name = nameTextField.text {
            setName.addNewNames(name: name)
        }
        nameTextField.text = ""
    }
    
    
}
