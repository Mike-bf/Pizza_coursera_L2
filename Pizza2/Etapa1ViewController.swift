//
//  Etapa1ViewController.swift
//  Pizza2
//
//  Created by Miguel angel Bogarin frias on 19/07/16.
//  Copyright © 2016 MayanTecnology. All rights reserved.
//

import UIKit

class Etapa1ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var tamaño: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tamaño.delegate = self
        // Do any additional setup after loading the view.
    }

    
    @IBAction func textFieldDidBeginEditing(_ textField: UITextField) { //Maneja el scroll cuando se empieza a editar
        var punto : CGPoint
        punto = CGPoint(x: 0, y: textField.frame.origin.y-100)
        self.scroll.setContentOffset(punto, animated: true)
    }
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        self.scroll.setContentOffset(CGPoint.zero, animated: true)
    }
    @IBAction func backgroundTap(_ sender: UIControl){
        tamaño.resignFirstResponder() //Desaparece el teclado presionando cualquier parte de la pantalla
    }
    @IBAction func textFieldDoneEditing(_ sender: UITextField){
        sender.resignFirstResponder() //Desaparece teclado presionando intro. (1)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultado = calcular()
        let sigVista = segue.destination as! Etapa2ViewController
        sigVista.obtiene1 = resultado
    }

    @IBAction func calculaTam(_ sender: AnyObject) {
        self.reloadInputViews()
        if (tamaño.text?.isEmpty)!{
            let alerta = UIAlertController(title: "Ocurrio un error", message: "Parece que no escribiste el tamaño", preferredStyle: UIAlertControllerStyle.alert)
            
            //Añade boton generico
            let botonSalir = UIAlertAction(title: "Regresar", style: UIAlertActionStyle.default, handler: nil)
            alerta.addAction(botonSalir)
            
            
            self.present(alerta, animated: true, completion: nil) //muestra mensaje a usuario
            return
        }else{
            var str = calcular()
            if str.isEmpty{
                let alerta = UIAlertController(title: "Ocurrio un error", message: "Parece que no escribiste el tamaño", preferredStyle: UIAlertControllerStyle.alert)
                
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
        if (self.tamaño.text == "Chica" || self.tamaño.text == "chica"){
            //print("Es chica")
            aux = "Chica"
        }
        if (self.tamaño.text == "Mediana" || self.tamaño.text == "mediana"){
            //print("Es mediana")
            aux = "Mediana"
        }
        if (self.tamaño.text == "Grande" || self.tamaño.text == "grande"){
            //print("Es grande")
            aux = "Grande"
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
