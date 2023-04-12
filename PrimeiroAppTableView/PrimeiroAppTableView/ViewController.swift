//
//  ViewController.swift
//  PrimeiroAppTableView
//
//  Created by Wolfgang Florian Covi on 06/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var personList: [Person] = [Person(name: "João"),
                                Person(name: "Maria"),
                                Person(name: "José"),
                                Person(name: "Carlos"),
                                Person(name: "Pedro"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(person: personList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

extension ViewController: UITableViewDelegate {
    
}

