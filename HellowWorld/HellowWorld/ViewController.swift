//
//  ViewController.swift
//  HellowWorld
//
//  Created by Alumno on 10/02/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var lbMensaje: UILabel!
    @IBAction func bMensaje(_ sender: UIButton) {
        
        lbMensaje.text = "Hola " + tfNombre.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

