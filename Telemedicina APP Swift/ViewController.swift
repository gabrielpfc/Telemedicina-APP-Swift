//
//  ViewController.swift
//  Telemedicina APP Swift
//
//  Created by user on 10/06/20.
//  Copyright © 2020 Gabriel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var lblAssunto: UILabel!
    @IBOutlet weak var lblIdade: UILabel!
    @IBOutlet weak var lblTemp: UILabel!
    @IBOutlet weak var lblPas: UILabel!
    @IBOutlet weak var lblPad: UILabel!
    @IBOutlet weak var stepperIdade: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func idadeAction(_ sender: Any) {
        lblIdade.text = "\(Int(stepperIdade.value))"
    }
    
    @IBAction func tempAction(_ sender: UISlider) {
        lblTemp.text = "\(Int(sender.value))"
    }
    
    @IBAction func pasAction(_ sender: UISlider) {
        lblPas.text = "\(Int(sender.value))"
    }
    
    @IBAction func padAction(_ sender: UISlider) {
        lblPad.text = "\(Int(sender.value))"
    }
    
    @IBAction func assuntoAction(_ sender: Any) {
    let alerta = UIAlertController(
            title: "Assunto da mensagem",
            message: "Faça sua escolha",
            preferredStyle: UIAlertController.Style.actionSheet)
        
        alerta.addAction(UIAlertAction(
            title: "Sugestao",
            style: UIAlertAction.Style.default,
            handler: { (action) in
                self.lblAssunto.text = action.title
        }))
    
        alerta.addAction(UIAlertAction(
            title: "Reclamacao",
            style: UIAlertAction.Style.default,
            handler: { (action) in
                self.lblAssunto.text = action.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "Parceria",
            style: UIAlertAction.Style    .default,
            handler: { (action) in
                self.lblAssunto.text = action.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertAction.Style.cancel,
            handler: nil))

        present(alerta, animated: true, completion: nil)
    }

}
