//
//  main.swift
//  ExerciciosPolimorfismoEncapsulamento
//
//  Created by Wolfgang Florian Covi on 16/03/23.
//

import Foundation

// Exercício Vendedor
// Um vendedor de loja possui nome, idade e cpf e saldo em conta. Vende em sua loja ternos, vestidos e bonés, definir um método vender(quantidade DePecas: Int, tipoDePeca: String).
// -Cada terno custa 400 reais, caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno. -Cada vestido custa 900 reais, caso o cliente compre 5 vestidos ele ganha um véu de noiva de brinde. encapsule todos os métodos necessários.

class SalesMan {
    var name: String
    var age: Int
    var cpf: String
    private var balance: Double
    
    init(name: String, age: Int, cpf: String, balance: Double) {
        self.name = name
        self.age = age
        self.cpf = cpf
        self.balance = balance
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        switch tipoDePeca {
        case "terno":
            print(calcTerno(quantidade: quantidadeDePecas))
        case "vestido":
            print(calcVestido(quantidade: quantidadeDePecas))
        default:
            print("Peça inválida")
        }
    }
    
    private func calcTerno(quantidade: Int) -> String {
        let price: Int = 400
        var total: Int = price * quantidade
        
        if quantidade >= 3 {
            total = 350 * quantidade
            return "Total a pagar nos ternos com desconto é \(total)."
        } else {
            total = price * quantidade
            return "Total a pagar nos ternos é \(total)."
        }
    }
    
    private func calcVestido(quantidade: Int) -> String {
        let price: Int = 900
        var total: Int = price * quantidade
        
        if quantidade >= 5 {
            return "Total a pagar nos vestidos é \(total) e você ganhou um véu de noiva."
        } else {
            total = price * quantidade
            return "Total a pagar nos vestidos é \(total)."
        }
    }
}

var saleTerno: SalesMan = SalesMan(name: "Wolf", age: 38, cpf: "000.000.000-00", balance: 100000)
saleTerno.vender(quantidadeDePecas: 3, tipoDePeca: "terno")

var saleVestido: SalesMan = SalesMan(name: "Joana", age: 33, cpf: "000.000.000-01", balance: 200000)
saleVestido.vender(quantidadeDePecas: 6, tipoDePeca: "vestido")


// Exercício Funcionários
// Definir uma classe Funcionário com nome, salário e cpf, depois defina as classes Programador que tem plataforma de trabalho(ex: Android, Web, iOS), e uma classe Designer que tem ferramenta preferida(ex: Photoshop, Sketch, Gimp). Ambos tem um bônus anual baseado no salário, Programador recebe 20% e Designer recebe 15%. Faça um método que calcule o bônus anual e mostre o valor do bônus na tela. Use polimorfismo para resolver este problema.

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func calcBonus() -> String {
        let bonus = salario * 12 * 0
        return "O valor do bonus é \(bonus)."
    }
}

class Developer: Funcionario {
    var platform: String
    
    init(platform: String, nome: String, salario: Double, cpf: String) {
        self.platform = platform
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calcBonus() -> String {
        let bonus = salario * 12 * 0.20
        return "O valor do bonus de um Developer é \(bonus)."
    }
}

class Designer: Funcionario {
    var tool: String
    
    init(tool: String, nome: String, salario: Double, cpf: String) {
        self.tool = tool
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calcBonus() -> String {
        let bonus = salario * 0.15
        return "O valor do bonus de um Designer é \(bonus)."
    }
}

var developer1 = Developer(platform: "iOS", nome: "Roberto", salario: 10000, cpf: "000.000.000-00")
print(developer1.calcBonus())

// como já usar o salário dentro da função?

var designer1 = Designer(tool: "Photoshop", nome: "Aline", salario: 10000, cpf: "000.000.000-00")
print(designer1.calcBonus())

// Exercício Veículo
// Definir uma classe Veículo com cor, preço e quantidade de passageiros, depois defina as classes Carro que tem tamanho das rodas, e Avião que tem piloto e companhia aérea. queremos descobrir a quantidade de combustível que cada um dos veículos gasta por viagem, defina um método que recebe como parâmetro a distancia em Km e calcule a quantidade de combustível. Carro: tamanho das rodas * quantidade de passageiros * distancia Avião: quantidade de passageiros * distancia

class Veiculo {
    var quantPassageiros: Int
    
    init(quantPassageiros: Int) {
        self.quantPassageiros = quantPassageiros
    }
    
    func calcularCombustivel(km: Double) -> Double {
        return km * Double(quantPassageiros)
    }
}

class Carro: Veiculo {
    var tamanhoRodas: Int
    
    init(tamanhoRodas: Int, quantPassageiros: Int) {
        self.tamanhoRodas = tamanhoRodas
        super.init(quantPassageiros: quantPassageiros)
    }

    override func calcularCombustivel(km: Double) -> Double {
        return Double(tamanhoRodas) * Double(quantPassageiros) * km
    }

}

class Aviao: Veiculo {
    
}

var boing: Aviao = Aviao(quantPassageiros: 200)
Aviao.calcularCombustivel(<#T##self: Veiculo##Veiculo#>)
