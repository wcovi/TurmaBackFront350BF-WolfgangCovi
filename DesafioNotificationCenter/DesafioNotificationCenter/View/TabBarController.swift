//
//  TabBarController.swift
//  DesafioNotificationCenter
//
//  Created by Wolfgang Florian Covi on 08/05/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        confiColors()
    }
    
    func configItems() {
        guard let items = tabBar.items else { return }
        items[0].title = "Lista"
        items[0].image = UIImage(systemName: "list.bullet.rectangle")
        
        items[1].title = "Adicionar nomes"
        items[1].image = UIImage(systemName: "figure.wave")
        
    }

    func confiColors() {
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
        
    }

}
