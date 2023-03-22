//
//  ViewController.swift
//  Ligacoes
//
//  Created by Wolfgang Florian Covi on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Wolf"
    }
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("Cliquei no botão")
    }
    

}

