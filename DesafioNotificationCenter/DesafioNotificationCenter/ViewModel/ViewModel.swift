//
//  ViewModel.swift
//  DesafioNotificationCenter
//
//  Created by Wolfgang Florian Covi on 08/05/23.
//

import Foundation

class ViewModel {
    
    private var names: [Person] = [Person(name: "Wolfgang")]
    
    func addNewNames(name: String) {
        names.append(Person(name: name))
    }
    
    func getName(index: Int) -> Person {
        return names[index]
    }
    
    var heightForRow: CGFloat {
        45
    }
    
    var numberOfRowsInSection: Int {
        names.count
    }
    
}

extension NSNotification.Name {
    static let name = Notification.Name("text")

}
