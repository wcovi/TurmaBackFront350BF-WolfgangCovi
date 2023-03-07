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

class Homem {
    
    var nome: String = "Wolfgang"
    var idade: Int = 38
    var nacionalidade: String = "Austríaca"
    var time: String = "Palmeiras"
    var altura: Double = 1.92
    
    func andar() {
        print("Wolf andou")
    }
    
    func dormir() {
        print("Wolf dormiu")
    }
}

class Mulher {
    
    var nome = "Aline"
    var idade = 33
    var nacionalidade = "Italiana"
    var time = "São Paulo"
    var altura = 1.62
    
    func deitar() {
        print("Aline andou")
    }
    
    func correr() {
        print("Aline correu")
    }
}

class Mae {
    var nome: String = "Antonia"
    var idade: Int = 79
    var nacionalidade: String = "Italiana"
    var religiao: String = "Católica"
    var altura: Double = 172
    
    func sorrir() {
        print("Nia sorriu")
    }
    
    func sentar() {
        print("Nia sentou")
    }
}
