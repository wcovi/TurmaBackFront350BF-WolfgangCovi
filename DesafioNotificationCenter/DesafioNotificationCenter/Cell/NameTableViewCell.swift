//
//  NameTableViewCell.swift
//  DesafioNotificationCenter
//
//  Created by Wolfgang Florian Covi on 08/05/23.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String  = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    func setupCell(person: Person) {
        nameLabel.text = person.name
    }
    
}
