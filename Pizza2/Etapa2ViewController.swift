//
//  Etapa2ViewController.swift
//  Pizza2
//
//  Created by Miguel angel Bogarin frias on 25/07/16.
//  Copyright © 2016 MayanTecnology. All rights reserved.
//

import UIKit

class Etapa2ViewController: UIViewController, UITextFieldDelegate {

    var obtiene1 : String = ""
    
    //Constante de resultados
    @IBOutlet weak var res1: UILabel!
    
    //Constante para uso
    @IBOutlet weak var masa: UITextField!
    //@IBOutlet weak var scroll: UIScrollView!
    
    override func viewWillAppear(_ animated: Bool) {
        res1.text = obtiene1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        masa.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*@IBAction func textFieldDidBeginEditing(textField: UITextField) {
        //Maneja el scroll cuando se empieza a editar
        var punto : CGPoint
        punto = CGPointMake(0, textField.frame.origin.y-50)
        self.scroll.setContentOffset(punto, animated: true)

    }
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        self.scroll.setContentOffset(CGPointZero, animated: true)
    }*/
    
    @IBAction func backgroundTap(_ sender: UIControl){
        masa.resignFirstResponder() //Desaparece el teclado presionando cualquier parte de la pantalla. (2) Usar TouchDown en Control
    }
    
    @IBAction func textFieldDoneEditing(_ sender: UITextField){
        sender.resignFirstResponder() //Desaparece teclado presionando intro. (1)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultado = calcular()
        let sigVista = segue.destination as! Etapa3ViewController
        sigVista.obtiene01 = obtiene1
        sigVista.obtiene02 = resultado
    }
    
    @IBAction func calculaMasa(_ sender: AnyObject) {
        self.reloadInputViews()
        if (masa.text?.isEmpty)!{
            let alerta = UIAlertController(title: "Ocurrio un error", message: "Parece que no escribiste la masa", preferredStyle: UIAlertControllerStyle.alert)
            
            //Añade boton generico
            let botonSalir = UIAlertAction(title: "Regresar", style: UIAlertActionStyle.default, handler: nil)
            alerta.addAction(botonSalir)
            
            
            self.present(alerta, animated: true, completion: nil) //muestra mensaje a usuario
            return
        }else{
            let str = calcular()
            if str.isEmpty{
                let alerta = UIAlertController(title: "Ocurrio un error", message: "Parece que no escribiste la masa", preferredStyle: UIAlertControllerStyle.alert)
                
                //Añade boton generico
                let botonSalir = UIAlertAction(title: "Regresar", style: UIAlertActionStyle.default, handler: nil)
                alerta.addAction(botonSalir)
                
                
                self.present(alerta, animated: true, completion: nil) //muestra mensaje a usuario
                return
            }
        }
        
    }
    
    func calcular()->String{
        var aux:String = ""
        if (self.masa.text == "Delgada" || self.masa.text == "delgada"){
            //print("Es chica")
            aux = "Delgada"
        }
        if (self.masa.text == "Crujiente" || self.masa.text == "crujiente"){
            //print("Es mediana")
            aux = "Crujiente"
        }
        if (self.masa.text == "Gruesa" || self.masa.text == "gruesa"){
            //print("Es grande")
            aux = "Gruesa"
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
