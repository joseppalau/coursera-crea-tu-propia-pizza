//
//  ViewController.swift
//  CreaTuPropiaPizza
//
//  Created by Administrador on 7/9/17.
//  Copyright © 2017 palauturf. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var chicaBtn: UIButton!
    @IBOutlet weak var madianaBtn: UIButton!
    @IBOutlet weak var grandeBtn: UIButton!
    
    var colorClaro = UIColor(red: 94/255.0, green: 173/255.0, blue: 53/255.0, alpha: 0.75)
    var colorOscuro = UIColor(red: 125/255.0, green: 225/255.0, blue: 53/255.0, alpha: 1.0)

    var tamañoElegido: String = ""
    var contadorAccionesView1: Int = 0
    
   
    @IBAction func tabChicaBtn(_ sender: Any) {
        
        chicaBtn.backgroundColor = colorOscuro
        madianaBtn.backgroundColor = colorClaro
        grandeBtn.backgroundColor = colorClaro
        
        tamañoElegido = "Chica"
        
        if contadorAccionesView1 == 0 {
            contadorAccionesView1 = 1
        }
        
    }
    
    @IBAction func tabMedianaBtn(_ sender: Any) {
        
        chicaBtn.backgroundColor = colorClaro
        madianaBtn.backgroundColor = colorOscuro
        grandeBtn.backgroundColor = colorClaro
        
        tamañoElegido = "Mediana"
        
        if contadorAccionesView1 == 0 {
            contadorAccionesView1 = 1
        }
        
    }

    @IBAction func tabGrandeBtn(_ sender: Any) {
        
        chicaBtn.backgroundColor = colorClaro
        madianaBtn.backgroundColor = colorClaro
        grandeBtn.backgroundColor = colorOscuro
        
        tamañoElegido = "Grande"
        
        if contadorAccionesView1 == 0 {
            contadorAccionesView1 = 1
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let sigaVista = segue.destination as! SegundaViewController
        sigaVista.transTamañoElegido = tamañoElegido
        
        let sigaVista2 = segue.destination as! SegundaViewController
        sigaVista2.transContadorAccionesAcumulado = contadorAccionesView1
        
    }
    
}




