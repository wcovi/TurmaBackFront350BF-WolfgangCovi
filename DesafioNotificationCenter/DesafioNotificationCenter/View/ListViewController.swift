//
//  Tela01ViewController.swift
//  DesafioNotificationCenter
//
//  Created by Wolfgang Florian Covi on 08/05/23.
//

import UIKit

class ListViewController: UIViewController {

    private var setName: ViewModel = ViewModel()
    
    @IBOutlet weak var nameListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameListTableView.delegate = self
        nameListTableView.dataSource = self
        nameListTableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
        configObserver()
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(), name: ., object: nil)
    }
    
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        setName.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell {
            cell.setupCell(person: setName.getName(index: indexPath.row))
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        setName.heightForRow
    }
    
}
