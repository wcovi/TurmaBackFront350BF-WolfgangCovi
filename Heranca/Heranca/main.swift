//
//  main.swift
//  Heranca
//
//  Created by Caio Fabrini on 09/03/23.
//

import Foundation


// MARK: - Herança

// Classe Pai / Super Class

// CLASSE MAIS GENERICA OU CLASSE QUE CONTENHA ALGO QUE POSSA SER REAPROVEITADO NAS CLASSES FILHAS/ SUB CLASS

class Animal {
    
    var idade: Int = 10
    
    func comer() {
        print("O animal está comendo!")
    }
    
}

class Cavalo: Animal {

}

class Boi: Animal {
    
}

class Ovelha: Animal {
    
}

// Classe filha -> Sub class
// A classe filha contem TUDO oque a classe pai CONTEM, TANTO CARACTERISTICAS COMO AÇÕES

//var meuCavalo: Cavalo = Cavalo()
//meuCavalo.comer()

// Classe pai
class Pessoa {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}


class Caio: Pessoa {

    var peso: Double
    
    init(peso: Double, nome: String) {
        self.peso = peso
        super.init(nome: nome)
    }
    
    
}

var meuNomeBarbara: Caio = Caio(peso: 82, nome: "Caio")

print(meuNomeBarbara.nome)
print(meuNomeBarbara.peso)

// DESAFIO PARA PASSAR PARA CASA

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.

class Car {
    var doorsNumber: Int
    var color: String
    var engineSize: Double
    
    func drive() {
        print("O carro está andando")
    }
    
    func steer() {
        print("O carro está mudando de direção")
    }
    
    init(doorsNumber: Int, color: String, engineSize: Double) {
        self.doorsNumber = doorsNumber
        self.color = color
        self.engineSize = engineSize
    }
}

class ConvertibleCar: Car {
    var carBodyStyle: String = "Conversível"
    var isTurbo: Bool = true
    var weight: Double = 1450
}

class Hatchback: Car {
    var trunkCapacity: Double
    var cylindersNumber: Int
    var wheelsNumber: Int
    
    init(doorsNumber: Int, color: String, engineSize: Double, trunkCapacity: Double, cylindersNumber: Int, wheelsNumber: Int) {
        self.trunkCapacity = trunkCapacity
        self.cylindersNumber = cylindersNumber
        self.wheelsNumber = wheelsNumber
        super.init(doorsNumber: doorsNumber, color: color, engineSize: engineSize)
    }
}

var myHatch: Hatchback = Hatchback(doorsNumber: 2, color: "Azul", engineSize: 2.4, trunkCapacity: 1000, cylindersNumber: 8, wheelsNumber: 4)

print(myHatch.color, myHatch.engineSize)






