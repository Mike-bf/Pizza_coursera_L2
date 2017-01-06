//
//  Etapa3ViewController.swift
//  Pizza2
//
//  Created by Miguel angel Bogarin frias on 18/08/16.
//  Copyright © 2016 MayanTecnology. All rights reserved.
//

import UIKit

class Etapa3ViewController: UIViewController {

    var obtiene01 : String = ""
    var obtiene02 : String = ""
    
    @IBOutlet weak var Rtam: UILabel!
    @IBOutlet weak var Rmasa: UILabel!
    
    @IBOutlet weak var queso: UITextField!
    
    
    override func viewWillAppear(_ animated: Bool) {
        Rtam.text = obtiene01
        Rmasa.text = obtiene02
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultado = calcula()
        let sigVista = segue.destination as! Etapa4ViewController
        sigVista.obtiene01 = obtiene01
        sigVista.obtiene02 = obtiene02
        sigVista.obtiene03 = resultado
    }
    
    
    @IBAction func obtieneQueso(_ sender: AnyObject) {
        self.reloadInputViews()
        if (queso.text?.isEmpty)!{
            let alerta = UIAlertController(title: "Ocurrio un error", message: "Parece que no escribiste el queso", preferredStyle: UIAlertControllerStyle.alert)
            
            //Añade boton generico
            let botonSalir = UIAlertAction(title: "Regresar", style: UIAlertActionStyle.default, handler: nil)
            alerta.addAction(botonSalir)
            
            
            self.present(alerta, animated: true, completion: nil) //muestra mensaje a usuario
            return
        }else{
            let str = calcula()
            if str.isEmpty{
                let alerta = UIAlertController(title: "Ocurrio un error", message: "Parece que no escribiste el queso", preferredStyle: UIAlertControllerStyle.alert)
                
                //Añade boton generico
                let botonSalir = UIAlertAction(title: "Regresar", style: UIAlertActionStyle.default, handler: nil)
                alerta.addAction(botonSalir)
                
                
                self.present(alerta, animated: true, completion: nil) //muestra mensaje a usuario
                return
            }
        }
        
    }
    
    func calcula()->String{
        var aux:String = ""
        if (self.queso.text == "Mozarela" || self.queso.text == "mozarela"){
            //print("Es chica")
            aux = "Mozarela"
        }
        if (self.queso.text == "Cheddar" || self.queso.text == "cheddar"){
            //print("Es mediana")
            aux = "Cheddar"
        }
        if (self.queso.text == "Parmesano" || self.queso.text == "parmesano"){
            //print("Es grande")
            aux = "Parmesano"
        }
        if (self.queso.text == "Sin queso" || self.queso.text == "sin queso"){
            //print("Es grande")
            aux = "Sin queso"
        }
        
        return aux
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
