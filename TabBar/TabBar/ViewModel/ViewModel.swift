//
//  ViewModel.swift
//  TabBar
//
//  Created by Wolfgang Florian Covi on 01/05/23.
//

import Foundation

class ViewModel {
    
    private var profileImageAndName: [Profile] = [Profile(name: "Caio", image: "person.circle.fill")]
    
    func setNewName(name: String) {
        profileImageAndName.append(Profile(name: name, image: "person.circle.fill"))
    }
    
    func clearAll() {
        profileImageAndName.removeAll()
    }
    
    func getProfile(index: Int) -> Profile {
        return profileImageAndName[index]
    }
    
    var heighForRowAt: CGFloat {
        80
    }
    
    var numberOfRowsInSection: Int {
        return profileImageAndName.count
    }
    
}
