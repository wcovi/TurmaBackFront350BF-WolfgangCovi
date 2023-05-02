//
//  ProfileTableViewCell.swift
//  TabBar
//
//  Created by Wolfgang Florian Covi on 29/04/23.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier : String = "ProfileTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupCell(person: Profile) {
        nameLabel.text = person.name
        profileImageView.image = UIImage(systemName: "person.circle.fill")
    }
    
    
}
