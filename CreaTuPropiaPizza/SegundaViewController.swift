//
//  SegundaViewController.swift
//  CreaTuPropiaPizza
//
//  Created by Administrador on 11/9/17.
//  Copyright © 2017 palauturf. All rights reserved.
//

import UIKit


class SegundaViewController: UIViewController {
    
    
    @IBOutlet weak var delgadaBtn: UIButton!
    
    @IBOutlet weak var crujienteBtn: UIButton!
    
    @IBOutlet weak var gruesaBtn: UIButton!
    
    var colorClaro = UIColor(red: 94/255.0, green: 173/255.0, blue: 53/255.0, alpha: 0.75)
    var colorOscuro = UIColor(red: 125/255.0, green: 225/255.0, blue: 53/255.0, alpha: 1.0)
    
    var masaEscogida: String = ""
    
    var transTamañoElegido = ""
    var TamañoElegidoView2 = ""
   
    var transContadorAccionesAcumulado: Int = 0
    var contadorAccionesAcumuladoView2: Int = 0
    var contadorAccionesView2: Int = 0
    

        override func viewWillAppear(_ animated: Bool) {
            
        TamañoElegidoView2 = transTamañoElegido
        contadorAccionesAcumuladoView2 = transContadorAccionesAcumulado
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func tapDelgadaBtn(_ sender: Any) {
        
        delgadaBtn.backgroundColor = colorOscuro
        crujienteBtn.backgroundColor = colorClaro
        gruesaBtn.backgroundColor = colorClaro
        
        masaEscogida = "Delgada"
    
        if contadorAccionesView2 == 0 {
            contadorAccionesView2 = 1
            contadorAccionesAcumuladoView2 += 1
        }
        
    }
    
    
    @IBAction func tapCrujienteBtn(_ sender: Any) {
        
        delgadaBtn.backgroundColor = colorClaro
        crujienteBtn.backgroundColor = colorOscuro
        gruesaBtn.backgroundColor = colorClaro
        
        masaEscogida = "Crujiente"
        
        if contadorAccionesView2 == 0 {
            contadorAccionesView2 = 1
            contadorAccionesAcumuladoView2 += 1
        }
        
    }
    
    @IBAction func tapGruesaBtn(_ sender: Any) {
        
        delgadaBtn.backgroundColor = colorClaro
        crujienteBtn.backgroundColor = colorClaro
        gruesaBtn.backgroundColor = colorOscuro
        
        masaEscogida = "Gruesa"
        
        if contadorAccionesView2 == 0 {
            contadorAccionesView2 = 1
            contadorAccionesAcumuladoView2 += 1
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let sigaVista = segue.destination as! TerceraViewController
        sigaVista.transTamañoElegido2 = TamañoElegidoView2
        
        let sigaVista2 = segue.destination as! TerceraViewController
        sigaVista2.transMasaEscogida = masaEscogida
        
        let sigaVista3 = segue.destination as! TerceraViewController
        sigaVista3.transContadorAccionesAcumulado2 = contadorAccionesAcumuladoView2
        
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
