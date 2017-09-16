//
//  CuartaViewController.swift
//  CreaTuPropiaPizza
//
//  Created by Josep Palau Caballero on 13/09/2017.
//  Copyright © 2017 palauturf. All rights reserved.
//

import UIKit


class CuartaViewController: UIViewController {
    
    
    @IBOutlet weak var cebollaBtn: UIButton!
    
    @IBOutlet weak var pepinoBtn: UIButton!
    
    @IBOutlet weak var piñaBtn: UIButton!
    
    @IBOutlet weak var anchoasBtn: UIButton!
    
    @IBOutlet weak var aceitunasBtn: UIButton!
    
    @IBOutlet weak var alcachofasBtn: UIButton!
    
    @IBOutlet weak var salchichasBrn: UIButton!
    
    @IBOutlet weak var polloBtn: UIButton!
    
    @IBOutlet weak var jamonBtn: UIButton!
    
   
    var colorClaro = UIColor(red: 94/255.0, green: 173/255.0, blue: 53/255.0, alpha: 0.75)
    var colorOscuro = UIColor(red: 125/255.0, green: 225/255.0, blue: 53/255.0, alpha: 1.0)
    
    var contadorIngredientes: Int = 0
    var ingredientes: String = ""
    
    var transTamañoElegido3 = ""
    var TamañoElegidoView4 = ""
    
    var transMasaEscogida2 = ""
    var masaEscogidaView4 = ""
    
    var transQuesoEscogido = ""
    var quesoEscogidoView4 = ""
    
    var transContadorAccionesAcumulado3: Int = 0
    var contadorAccionesView4: Int = 0
    var contadorAccionesAcumuladoView4: Int = 0
    
    override func viewWillAppear(_ animated: Bool) {
        TamañoElegidoView4 = transTamañoElegido3
        masaEscogidaView4 = transMasaEscogida2
        quesoEscogidoView4 = transQuesoEscogido
        contadorAccionesAcumuladoView4 = transContadorAccionesAcumulado3
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cebollaBtn.backgroundColor = colorClaro
        pepinoBtn.backgroundColor = colorClaro
        piñaBtn.backgroundColor = colorClaro
        anchoasBtn.backgroundColor = colorClaro
        aceitunasBtn.backgroundColor = colorClaro
        alcachofasBtn.backgroundColor = colorClaro
        salchichasBrn.backgroundColor = colorClaro
        polloBtn.backgroundColor = colorClaro
        jamonBtn.backgroundColor = colorClaro
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        contadorAccionesAcumuladas()

    }
    
    
    func contadorAccionesAcumuladas() {
        
        if contadorAccionesView4 > 0 {
            contadorAccionesAcumuladoView4 += 1
            
        }
        
    }
    
    
    @IBAction func tapCebollaBtn(_ sender: Any) {
        
        if cebollaBtn.backgroundColor == colorClaro && contadorIngredientes < 5 {
            cebollaBtn.backgroundColor = colorOscuro
            contadorIngredientes += 1
            ingredientes += " Cebolla"
            
            contadorAccionesView4 += 1
        }
            
        else {
            cebollaBtn.backgroundColor = colorClaro
            contadorIngredientes -= 1
            
            contadorAccionesView4 -= 1
        }
        
    }
    
    @IBAction func tapPepinoBtn(_ sender: Any) {
        
        if pepinoBtn.backgroundColor == colorClaro && contadorIngredientes < 5 {
            pepinoBtn.backgroundColor = colorOscuro
            contadorIngredientes += 1
            ingredientes += " Pepino"
            
            contadorAccionesView4 += 1
        }
        else {
            pepinoBtn.backgroundColor = colorClaro
            contadorIngredientes -= 1
            
            contadorAccionesView4 -= 1
        }

    }
    

    @IBAction func tapPiñaBtn(_ sender: Any) {
        
        if piñaBtn.backgroundColor == colorClaro && contadorIngredientes < 5 {
            piñaBtn.backgroundColor = colorOscuro
            contadorIngredientes += 1
            ingredientes += " Piña"
            
            contadorAccionesView4 += 1
        }
        else {
            piñaBtn.backgroundColor = colorClaro
            contadorIngredientes -= 1
            
            contadorAccionesView4 -= 1
        }
    
    }
    
    
    @IBAction func tapAnchoasBtn(_ sender: Any) {
        
        if anchoasBtn.backgroundColor == colorClaro && contadorIngredientes < 5 {
            anchoasBtn.backgroundColor = colorOscuro
            contadorIngredientes += 1
            ingredientes += " Anchoas"
            
            contadorAccionesView4 += 1
        }
        else {
            anchoasBtn.backgroundColor = colorClaro
            contadorIngredientes -= 1
            
            contadorAccionesView4 -= 1
        }
        
    }
    
    
    @IBAction func tapAceitunasBtn(_ sender: Any) {
        
        if aceitunasBtn.backgroundColor == colorClaro && contadorIngredientes < 5 {
            aceitunasBtn.backgroundColor = colorOscuro
            contadorIngredientes += 1
            ingredientes += " Aceitunas"
            
            contadorAccionesView4 += 1
            
        }
        else {
            aceitunasBtn.backgroundColor = colorClaro
            contadorIngredientes -= 1
            
            contadorAccionesView4 -= 1
        }
        
    }
    
    @IBAction func tapAlcachofasBtn(_ sender: Any) {
        
        if alcachofasBtn.backgroundColor == colorClaro && contadorIngredientes < 5 {
            alcachofasBtn.backgroundColor = colorOscuro
            contadorIngredientes += 1
            ingredientes += " Alcachofas"
            
            contadorAccionesView4 += 1
            
        }
        else {
            alcachofasBtn.backgroundColor = colorClaro
            contadorIngredientes -= 1
            
            contadorAccionesView4 -= 1
        }
        
    }

    
    @IBAction func tapSalchichasBtn(_ sender: Any) {
        
        if salchichasBrn.backgroundColor == colorClaro && contadorIngredientes < 5 {
            salchichasBrn.backgroundColor = colorOscuro
            contadorIngredientes += 1
            ingredientes += " Salchichas"
            
            contadorAccionesView4 += 1
            
        }
        else {
            salchichasBrn.backgroundColor = colorClaro
            contadorIngredientes -= 1
            
            contadorAccionesView4 -= 1
        }
        
    }
    
    @IBAction func tapPolloBtn(_ sender: Any) {
        
        if polloBtn.backgroundColor == colorClaro && contadorIngredientes < 5 {
            polloBtn.backgroundColor = colorOscuro
            contadorIngredientes += 1
            ingredientes += " Pollo"
            
            contadorAccionesView4 += 1
            
        }
        else {
            polloBtn.backgroundColor = colorClaro
            contadorIngredientes -= 1
            
            contadorAccionesView4 -= 1
        }
        
    }
    
    @IBAction func tapJamonBtn(_ sender: Any) {
        
        if jamonBtn.backgroundColor == colorClaro && contadorIngredientes < 5 {
            jamonBtn.backgroundColor = colorOscuro
            contadorIngredientes += 1
            ingredientes += " Jamón"
            
            contadorAccionesView4 += 1
            
        }
        else {
            jamonBtn.backgroundColor = colorClaro
            contadorIngredientes -= 1
            
            contadorAccionesView4 -= 1
        }
        
    }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            let sigaVista = segue.destination as! ConfirmacionViewController
            sigaVista.transTamañoElegido4 = TamañoElegidoView4
            
            let sigaVista2 = segue.destination as! ConfirmacionViewController
            sigaVista2.transMasaEscogida3 = masaEscogidaView4
            
            let sigaVista3 = segue.destination as! ConfirmacionViewController
            sigaVista3.transQuesoEscogido2 = quesoEscogidoView4
            
            let sigaVista4 = segue.destination as! ConfirmacionViewController
            sigaVista4.transIngredientes = ingredientes
            
            let sigaVista5 = segue.destination as! ConfirmacionViewController
            sigaVista5.transContadorAccionesAcumulado4 = contadorAccionesAcumuladoView4
            
        }
    
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


