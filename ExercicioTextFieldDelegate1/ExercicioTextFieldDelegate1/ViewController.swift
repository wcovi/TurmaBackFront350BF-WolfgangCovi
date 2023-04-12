//
//  ViewController.swift
//  ExercicioTextFieldDelegate1
//
//  Created by Wolfgang Florian Covi on 23/03/23.
//

//• Criar uma tela de cadastro contendo 3 campos de texto(nome,endereço,senha) e 1 botão cadastrar.
//• Objetivo do App: Faça uma validação campo a campo onde se o campo estiver vazio represente uma borda vermelha de espessura 2.0, se não, manter ele em sua cor padrão(lightGray).
//• Quando o foco estiver no teclado, a cor da sua borda será azul.
//• O botão por Default veem desabilitado, e só poderá ser
//habilitado quando TODOS os campo for preenchidos.
//• Quando o botão estiver habilitado deverá apresentar na área
//de debug a mensagem, “Cadastro realizado com sucesso”

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        nameTextField.placeholder = "Digite seu nome:"
        addressTextField.placeholder = "Digite seu e-mail:"
        passwordTextField.placeholder = "Digite sua senha:"
        registerButton.setTitle("Cadastrar", for: UIControl.State.normal)
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
        setTextField()
        registerButton.isEnabled == false
    }

    func setTextField() {
        nameTextField.layer.borderWidth = 2
        addressTextField.layer.borderWidth = 2
        passwordTextField.layer.borderWidth = 2
    }

    @IBAction func tappedRegisterButton(_ sender: Any) {
        print("Cadastro realizado com sucesso.")
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField {
        case nameTextField:
            nameTextField.layer.borderColor = UIColor.blue.cgColor
        case addressTextField:
            addressTextField.layer.borderColor = UIColor.blue.cgColor
        case passwordTextField:
            passwordTextField.layer.borderColor = UIColor.blue.cgColor
        default:
            textField.layer.borderWidth = 0
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if nameTextField.hasText && addressTextField.hasText && passwordTextField.hasText {
            registerButton.isEnabled = true
        }
    }
}
