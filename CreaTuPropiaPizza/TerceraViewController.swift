//
//  TerceraViewController.swift
//  CreaTuPropiaPizza
//
//  Created by Administrador on 11/9/17.
//  Copyright © 2017 palauturf. All rights reserved.
//

import UIKit

class TerceraViewController: UIViewController {

    @IBOutlet weak var mozarelaBtn: UIButton!
    
    @IBOutlet weak var chedarBtn: UIButton!
    
    @IBOutlet weak var parmesanoBtn: UIButton!
    
    @IBOutlet weak var sinQuesoBtn: UIButton!
    
    var colorClaro = UIColor(red: 94/255.0, green: 173/255.0, blue: 53/255.0, alpha: 0.75)
    var colorOscuro = UIColor(red: 125/255.0, green: 225/255.0, blue: 53/255.0, alpha: 1.0)
    
    var quesoEscogido: String = ""
    
    var transTamañoElegido2 = ""
    var TamañoElegidoView3 = ""
    
    var transMasaEscogida = ""
    var MasaEscogidaView3 = ""
    
    var transContadorAccionesAcumulado2: Int = 0
    var contadorAccionesView3: Int = 0
    var contadorAccionesAcumuladoView3: Int = 0
    
    override func viewWillAppear(_ animated: Bool) {
        
        TamañoElegidoView3 = transTamañoElegido2
        MasaEscogidaView3 = transMasaEscogida
        contadorAccionesAcumuladoView3 = transContadorAccionesAcumulado2
        
    }
    
    @IBAction func tapMozarelaBtn(_ sender: Any) {
        
        mozarelaBtn.backgroundColor = colorOscuro
        chedarBtn.backgroundColor = colorClaro
        parmesanoBtn.backgroundColor = colorClaro
        sinQuesoBtn.backgroundColor = colorClaro
        
        quesoEscogido = "Mozarela"
        
        if contadorAccionesView3 == 0 {
            contadorAccionesView3 = 1
            contadorAccionesAcumuladoView3 += 1
        }
        
    }
    
    
    @IBAction func tapChedarBtn(_ sender: Any) {
        
        mozarelaBtn.backgroundColor = colorClaro
        chedarBtn.backgroundColor = colorOscuro
        parmesanoBtn.backgroundColor = colorClaro
        sinQuesoBtn.backgroundColor = colorClaro
        
        quesoEscogido = "Chedar"
        
        if contadorAccionesView3 == 0 {
            contadorAccionesView3 = 1
            contadorAccionesAcumuladoView3 += 1
        }
    }
    
    @IBAction func tapParmesanoBtn(_ sender: Any) {
        
        mozarelaBtn.backgroundColor = colorClaro
        chedarBtn.backgroundColor = colorClaro
        parmesanoBtn.backgroundColor = colorOscuro
        sinQuesoBtn.backgroundColor = colorClaro
        
        quesoEscogido = "Parmesano"
        
        if contadorAccionesView3 == 0 {
            contadorAccionesView3 = 1
            contadorAccionesAcumuladoView3 += 1
        }
    }
    
    @IBAction func tapSinQuesoBtn(_ sender: Any) {
        
        mozarelaBtn.backgroundColor = colorClaro
        chedarBtn.backgroundColor = colorClaro
        parmesanoBtn.backgroundColor = colorClaro
        sinQuesoBtn.backgroundColor = colorOscuro
        
        quesoEscogido = "Sin queso"
        
        if contadorAccionesView3 == 0 {
            contadorAccionesView3 = 1
            contadorAccionesAcumuladoView3 += 1
        }
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let sigaVista = segue.destination as! CuartaViewController
        sigaVista.transTamañoElegido3 = TamañoElegidoView3
        
        let sigaVista2 = segue.destination as! CuartaViewController
        sigaVista2.transMasaEscogida2 = MasaEscogidaView3
        
        let sigaVista3 = segue.destination as! CuartaViewController
        sigaVista3.transQuesoEscogido = quesoEscogido
        
        let sigaVista4 = segue.destination as! CuartaViewController
        sigaVista4.transContadorAccionesAcumulado3 = contadorAccionesAcumuladoView3
      
    }
    
    
    

}
