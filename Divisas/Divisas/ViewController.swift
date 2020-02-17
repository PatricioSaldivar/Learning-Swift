//
//  ViewController.swift
//  Divisas
//
//  Created by Alumno on 13/02/20.
//  Copyright © 2020 Patricio Saldivar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgDinero.image = UIImage(named: "dollarSign")
    }
    
    
    @IBOutlet weak var tfTipoCambio: UITextField!
    @IBOutlet weak var tfPesos: UITextField!
    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var imgDinero: UIImageView!
    
    
    @IBAction func calculaDolares(_ sender: UIButton){
        if let tipoCambio = Double(tfTipoCambio.text!),
            let pesos = Double(tfPesos.text!){
            let dolares = pesos/tipoCambio
            tfDolar.text = "\(dolares)"
        }
        else{
            let alerta = UIAlertController(title: "No hay valores!", message: "Confirma que exista un valor en los campos de Tipo de Cambio y Pesos", preferredStyle: .alert)
            
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alerta.addAction(accion)
            
            present(alerta, animated: true, completion: nil)
        }
        
        
    }
    
    
    @IBAction func quityaTec(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

}

