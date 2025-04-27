//
//  ViewController.swift
//  IOSAcessibility
//
//  Created by Kauane S. R. on 27/04/25.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        apagarTudo()
        
        areaDeCalculo.accessibilityLabel = "Área de entrada"
        areaDeCalculo.accessibilityHint = "Exibe seus números ou operações aqui"
        areaDeCalculo.accessibilityTraits = .staticText
        areaDeCalculo.font = UIFont.preferredFont(forTextStyle: .body)
        areaDeCalculo.adjustsFontForContentSizeCategory = true
        
        areaDeResultado.accessibilityLabel = "Resultado"
        areaDeResultado.accessibilityHint = "Exibe o resultado das operações aqui"
        areaDeResultado.accessibilityTraits = .staticText
        areaDeResultado.font = UIFont.preferredFont(forTextStyle: .body)
        areaDeResultado.adjustsFontForContentSizeCategory = true
        
        adjustForAccessibilityAndTheme()
        
    }
    
    var workings: String = ""
    
    //areaDeCalculos
    
    @IBOutlet weak var areaDeCalculo: UITextView!
    
    
    @IBOutlet weak var areaDeResultado: UILabel!
    
    
    
    
    
    // ====================================
    
    //Botões com rótulos descritivos para leitura de ferramentas de acessibilidade de acordo com a Human Interface Guidelines da Apple
    
    //Uso de accessibilityLabel
    //Uso de accessibilityHint
    //Uso de UIAccessibilityTraits
    
    // operações
    @IBAction func somar(_ sender: Any) {
        addToWorkings(value: "+")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Somar"
            button.accessibilityHint = "Somar os números na calculadora"
            button.accessibilityTraits = .button
            button.setTitle("", for: .normal)
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
            
        }
    }
    
    @IBAction func subtrair(_ sender: Any) {
        addToWorkings(value: "-")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Subtrair"
            button.accessibilityHint = "Subtrair os números na calculadora"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
            
        }
    }
    
    @IBAction func dividir(_ sender: Any) {
        addToWorkings(value: "%")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Dividir"
            button.accessibilityHint = "Dividir os números na calculadora"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
            
        }
    }
    
    @IBAction func multiplicar(_ sender: Any) {
        addToWorkings(value: "x")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Multiplicar"
            button.accessibilityHint = "Multiplicar os números na calculadora"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
        }
    }
    
    
    @IBAction func calcularResultado(_ sender: Any) {
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result)
        areaDeResultado.text = resultString
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Botão de resultado"
            button.accessibilityHint = "Calcular o resultado da expressão na calculadora"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
        }
    }
    
    
    @IBAction func BotaoApagar(_ sender: Any) {
        apagar()
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Botão de apagar"
            button.accessibilityHint = "Apagar o último número ou operação da calculadora"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
        }
    }
    
    @IBAction func BotaoLimparTudo(_ sender: Any) {
        apagarTudo()
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Botão de limpar"
            button.accessibilityHint = "Limpar tudo o que está na calculadora"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
        }
    }
    
    
    // ====================================
    
    
    //números
    @IBAction func zero(_ sender: Any) {
        addToWorkings(value: "0")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número zero"
            button.accessibilityHint = "Adicionar o número 0"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
        }
    }
    
    @IBAction func um(_ sender: Any) {
        addToWorkings(value: "1")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número um"
            button.accessibilityHint = "Adicionar o número 1"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
        }
    }
    
    @IBAction func dois(_ sender: Any) {
        addToWorkings(value: "2")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número dois"
            button.accessibilityHint = "Adicionar o número 2"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
            
        }
    }
    
    
    @IBAction func tres(_ sender: Any) {
        addToWorkings(value: "3")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número três"
            button.accessibilityHint = "Adicionar o número 3"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
        }
    }
    
    @IBAction func quatro(_ sender: Any) {
        addToWorkings(value: "4")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número quatro"
            button.accessibilityHint = "Adicionar o número 4"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
        }
    }
    
    @IBAction func cinco(_ sender: Any) {
        addToWorkings(value: "5")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número cinco"
            button.accessibilityHint = "Adicionar o número 5"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
        }
    }
    
    @IBAction func seis(_ sender: Any) {
        addToWorkings(value: "6")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número seis"
            button.accessibilityHint = "Adicionar o número 6"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
        }
    }
    
    @IBAction func sete(_ sender: Any) {
        addToWorkings(value: "7")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número sete"
            button.accessibilityHint = "Adicionar o número 7"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
        }
    }
    
    @IBAction func oito(_ sender: Any) {
        addToWorkings(value: "8")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número oito"
            button.accessibilityHint = "Adicionar o número 8"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
        }
    }
    
    @IBAction func nove(_ sender: Any) {
        addToWorkings(value: "9")
        
        if let button = sender as? UIButton {
            button.accessibilityLabel = "Número nove"
            button.accessibilityHint = "Adicionar o número 9"
            button.accessibilityTraits = .button
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            
        }
    }
    
    // ====================================
    
    
    
    
    //funções
    func apagarTudo() {
        areaDeCalculo.text = ""
        workings = ""
        areaDeResultado.text = ""
    }
    
    func addToWorkings(value: String) {
        workings = workings + value
        areaDeCalculo.text = workings
    }
    
    
    func apagar() {
        if !workings.isEmpty {
            workings.removeLast()
            areaDeCalculo.text = workings
        }
    }
    
    func formatResult(_ result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
        
    }
    
    func adjustForAccessibilityAndTheme() {
        // Detecta se o modo de contraste alto está ativado
        if UIAccessibility.isDarkerSystemColorsEnabled {
            view.backgroundColor = .black
            areaDeCalculo.backgroundColor = .white
            areaDeResultado.backgroundColor = .white
            areaDeCalculo.textColor = .black
            areaDeResultado.textColor = .black
        } else {
            // Modo padrão
            view.backgroundColor = .white
            areaDeCalculo.backgroundColor = .lightGray
            areaDeResultado.backgroundColor = .lightGray
            areaDeCalculo.textColor = .black
            areaDeResultado.textColor = .black
        }
    }


    
    // Detectando mudanças no modo de interface
        override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            super.traitCollectionDidChange(previousTraitCollection)
            
            adjustForAccessibilityAndTheme()
        }
    
}


