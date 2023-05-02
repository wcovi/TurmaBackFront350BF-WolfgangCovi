//
//  Tela01ViewController.swift
//  TabBar
//
//  Created by Wolfgang Florian Covi on 25/04/23.
//

import UIKit

class Tela01ViewController: UIViewController {
    
    @IBOutlet weak var upperView: UIView!
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var nameTextField: UITextField!
    
    private var setProfile: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configTableView()
        configTextField()
    }
    
    func configView() {
        view.backgroundColor = .yellow
    }
    
    func configTableView() {
        profileTableView.delegate = self
        profileTableView.dataSource = self
        profileTableView.register(ProfileTableViewCell.nib(), forCellReuseIdentifier: ProfileTableViewCell.identifier)
    }
    
    func configTextField() {
        nameTextField.delegate = self
    }
    
    @IBAction func addNamePressedButton(_ sender: Any) {
        if let profileName = nameTextField.text {
            setProfile.setNewName(name: profileName)
        }
        nameTextField.text = ""
        profileTableView.reloadData()
    }
    
    @IBAction func clearPressedButton(_ sender: Any) {
        setProfile.clearAll()
        profileTableView.reloadData()
    }
    
}


extension Tela01ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return setProfile.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.identifier, for: indexPath) as? ProfileTableViewCell {
            cell.setupCell(person: setProfile.getProfile(index: indexPath.row))
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        setProfile.heighForRowAt
    }
    
}

extension Tela01ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
