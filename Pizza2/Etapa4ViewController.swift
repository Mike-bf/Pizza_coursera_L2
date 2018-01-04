//
//  Etapa4ViewController.swift
//  Pizza2
//
//  Created by Miguel angel Bogarin frias on 21/08/16.
//  Copyright © 2016 MayanTecnology. All rights reserved.
//

import UIKit

class Etapa4ViewController: UIViewController {

    
    var obtiene01 : String = ""
    var obtiene02 : String = ""
    var obtiene03 : String = ""
    
    var contador : Int = 0
    
    @IBOutlet weak var Rtam: UILabel!
    @IBOutlet weak var Rmasa: UILabel!
    @IBOutlet weak var Rqueso: UILabel!
    
    @IBOutlet weak var op1: UISwitch!
    @IBOutlet weak var op2: UISwitch!
    @IBOutlet weak var op3: UISwitch!
    @IBOutlet weak var op4: UISwitch!
    @IBOutlet weak var op5: UISwitch!
    @IBOutlet weak var op6: UISwitch!
    @IBOutlet weak var op7: UISwitch!
    @IBOutlet weak var op8: UISwitch!
    @IBOutlet weak var op9: UISwitch!
    
    
    override func viewWillAppear(_ animated: Bool) {
        Rtam.text = obtiene01
        Rmasa.text = obtiene02
        Rqueso.text = obtiene03
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if (op1.isOn){
            contador = 1
        }
        if (op2.isOn){
            contador += 1
        }
        if (op3.isOn){
            contador += 1
        }
        if (op4.isOn){
            contador += 1
        }
        if (op5.isOn){
            contador += 1
        }
        if (op6.isOn){
            contador += 1
        }
        if (op7.isOn){
            contador += 1
        }
        if (op8.isOn){
            contador += 1
        }
        if (op9.isOn){
            contador += 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ContinuarPrecionado(_ sender: Any) {
        //Validar campo vacio
        if (contador < 1 || contador > 5){
            
            let alerta = UIAlertController(title: "Ocurrio un error", message: "Parece que no seleccionaste ingredientes", preferredStyle: UIAlertControllerStyle.alert)
            
            //Añade boton generico
            let botonSalir = UIAlertAction(title: "Regresar", style: UIAlertActionStyle.default, handler: nil)
            alerta.addAction(botonSalir)
            
            
            self.present(alerta, animated: true, completion: nil) //muestra mensaje a usuario
    
        }
            
            
        
        
    }

    @IBAction func jamonPresionado(_ sender: Any) {
        
        if (op1.isOn){
            contador += 1
            if (contador > 5){
                op1.setOn(false, animated: true)
                contador -= 1
            }
        }else{
            contador -= 1
        }
        
        
        
    }
    
    @IBAction func PepperPrecionado(_ sender: Any) {
        if (op2.isOn){
            contador += 1
            if (contador > 5){
                op2.setOn(false, animated: true)
                contador -= 1
            }
        }else{
            contador -= 1
        }
        
    }
    
    @IBAction func pavoPrecionado(_ sender: Any) {
        if (op3.isOn){
            contador += 1
            if (contador > 5){
                op3.setOn(false, animated: true)
                contador -= 1
            }
        }else{
            contador -= 1
        }
        
    }
    
    @IBAction func salchPrecionado(_ sender: Any) {
        if (op4.isOn){
            contador += 1
            if (contador > 5){
                op4.setOn(false, animated: true)
                contador -= 1
            }
        }else{
            contador += 1
        }
        
    }
    
    @IBAction func AceitunaPrecionado(_ sender: Any) {
        if (op5.isOn){
            contador += 1
            if (contador > 5){
                op5.setOn(false, animated: true)
                contador -= 1
            }
        }else{
            contador += 1
        }
        
    }
    
    @IBAction func cebollaPrecionado(_ sender: Any) {
        if (op6.isOn){
            contador += 1
            if (contador > 5){
                op6.setOn(false, animated: true)
                contador -= 1
            }
        }else{
            contador += 1
        }
        
    }
    
    @IBAction func pimientoPrecionado(_ sender: Any) {
        if (op7.isOn){
            contador += 1
            if (contador > 5){
                op7.setOn(false, animated: true)
                contador -= 1
            }
        }else{
            contador += 1
        }
        
    }
    
    @IBAction func piñaPrecionado(_ sender: Any) {
        if(op8.isOn){
            contador += 1
            if (contador > 5){
                op8.setOn(false, animated: true)
                contador -= 1
            }
        }else{
            contador += 1
        }
        
    }
    
    @IBAction func anchoaPrecionado(_ sender: Any) {
        if (op9.isOn){
            contador += 1
            if (contador > 5){
                op9.setOn(false, animated: true)
                contador -= 1
            }
        }else{
            contador += 1
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Crear string de envio
        var ingredientes : String = ""
        if (op1.isOn){
            ingredientes += " Jamon"
        }
        if (op2.isOn){
            ingredientes += " Pepperoni"
        }
        if (op3.isOn){
            ingredientes += " Pavo"
        }
        if (op4.isOn){
            ingredientes += " Salchicha"
        }
        if (op5.isOn){
            ingredientes += " Aceituna"
        }
        if (op6.isOn){
            ingredientes += " Cebolla"
        }
        if (op7.isOn){
            ingredientes += " Pimiento"
        }
        if (op8.isOn){
            ingredientes += " Piña"
        }
        if (op9.isOn){
            ingredientes += " Anchoa"
        }
        
        //Enviar el nuevo valor, con los valores anteriores
        let sigVista = segue.destination as! EtapaFinalViewController
        sigVista.obtiene01 = obtiene01
        sigVista.obtiene02 = obtiene02
        sigVista.obtiene03 = obtiene03
        sigVista.obtiene04 = ingredientes
        
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
