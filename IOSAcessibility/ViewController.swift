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
      
    }
    
    var workings: String = ""
    
    //inputs
    @IBOutlet weak var input: UITextView!
    
    
    @IBOutlet weak var display: UILabel!
    
    
    // ====================================
    
    //Botões com rótulos descritivos para leitura de ferramentas de acessibilidade de acordo com a Human Interface Guidelines da Apple
    
    // operações
    @IBAction func somar(_ sender: Any) {
        addToWorkings(value: "+")
    }
    
    @IBAction func subtrair(_ sender: Any) {
        addToWorkings(value: "-")
    }
    
    @IBAction func dividir(_ sender: Any) {
        addToWorkings(value: "%")
    }
    
    @IBAction func multiplicar(_ sender: Any) {
        addToWorkings(value: "x")
    }
    
    
    @IBAction func calcularResultado(_ sender: Any) {
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result)
        display.text = resultString
    }
    
    
    @IBAction func BotaoApagar(_ sender: Any) {
        apagar()
    }
    
    @IBAction func BotaoLimparTudo(_ sender: Any) {
        apagarTudo()
    }
    
    
    // ====================================
    
    
    //números
    @IBAction func zero(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
    @IBAction func um(_ sender: Any) {
        addToWorkings(value: "1")
    }
    
    @IBAction func dois(_ sender: Any) {
        addToWorkings(value: "2")
    }
    
    
    @IBAction func tres(_ sender: Any) {
        addToWorkings(value: "3")
    }
    
    @IBAction func quatro(_ sender: Any) {
        addToWorkings(value: "4")
    }
    
    @IBAction func cinco(_ sender: Any) {
        addToWorkings(value: "5")
    }
    
    @IBAction func seis(_ sender: Any) {
        addToWorkings(value: "6")
    }
    
    @IBAction func sete(_ sender: Any) {
        addToWorkings(value: "7")
    }
    
    @IBAction func oito(_ sender: Any) {
        addToWorkings(value: "8")
    }
    
    @IBAction func nove(_ sender: Any) {
        addToWorkings(value: "9")
    }
    
    // ====================================
    
    
    
    
    //funções
    func apagarTudo() {
        input.text = ""
        workings = ""
        display.text = ""
    }
    
    func addToWorkings(value: String) {
        workings = workings + value
        input.text = workings
    }
    

    func apagar() {
        if !workings.isEmpty {
            workings.removeLast()
            input.text = workings
        }
    }
    
    func formatResult(_ result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
        
    }
    
}

