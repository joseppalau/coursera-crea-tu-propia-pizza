//
//  QuintaViewController.swift
//  CreaTuPropiaPizza
//
//  Created by Josep Palau Caballero on 16/09/2017.
//  Copyright © 2017 palauturf. All rights reserved.
//

import UIKit

class QuintaViewController: UIViewController {

    @IBOutlet weak var tamañoElegidoLbl: UILabel!
    
    @IBOutlet weak var masaElegidaLbl: UILabel!
    
    @IBOutlet weak var quesoElegidoLbl: UILabel!
    
    @IBOutlet weak var ingredientesElegidosLbl: UILabel!
    
    @IBOutlet weak var confirmarBtn: UIButton!
    
    @IBOutlet weak var avisoFaltaSelecciones: UILabel!
    

    var transTamañoElegido4: String = ""
    var transMasaEscogida3: String = ""
    var transQuesoEscogido2: String = ""
    var transIngredientes: String = ""
    
    var transContadorAccionesAcumulado4: Int = 0
    var contadorAccionesViewConfirmacion: Int = 0
    
    override func viewWillAppear(_ animated: Bool) {
        
        tamañoElegidoLbl.text = transTamañoElegido4
        masaElegidaLbl.text = transMasaEscogida3
        quesoElegidoLbl.text = transQuesoEscogido2
        ingredientesElegidosLbl.text = transIngredientes
        contadorAccionesViewConfirmacion = transContadorAccionesAcumulado4
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if contadorAccionesViewConfirmacion < 4 {
            
            confirmarBtn.isEnabled = false
            avisoFaltaSelecciones.isHidden = false
        }

    }
}
