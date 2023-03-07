//
//  main.swift
//  Classe
//
//  Created by Wolfgang Florian Covi on 07/03/23.
//

import Foundation

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
}

class Man {
    
    var name: String = "Wolfgang"
    var age: Int = 38
    var nationality: String = "Austríaca"
    var team: String = "Palmeiras"
    var height: Double = 1.92
    
    func walk() {
        print("Wolf andou")
    }
    
    func sleep() {
        print("Wolf dormiu")
    }
}

class Woman {
    
    var name: String = "Aline"
    var age: Int = 33
    var nationality: String = "Italiana"
    var team: String = "São Paulo"
    var height: Double = 1.62
    
    func lieDown() {
        print("Aline andou")
    }
    
    func run() {
        print("Aline correu")
    }
}

class Mother {
    var name: String = "Antonia"
    var age: Int = 79
    var nationality: String = "Italiana"
    var religion: String = "Católica"
    var height: Double = 172
    
    func smile() {
        print("Nia sorriu")
    }
    
    func sit() {
        print("Nia sentou")
    }
}
