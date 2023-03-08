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

// Dar vida ao objeto -> quando geramos a instancia -> ()
var meuCarro: Automovel = Automovel()


// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoa {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}

var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)
