//
//  EtapaFinalViewController.swift
//  Pizza2
//
//  Created by Miguel angel Bogarin frias on 28/12/16.
//  Copyright © 2016 MayanTecnology. All rights reserved.
//

import UIKit

class EtapaFinalViewController: UIViewController {

    var obtiene01 : String = ""
    var obtiene02 : String = ""
    var obtiene03 : String = ""
    var obtiene04 : String = ""
    
    @IBOutlet weak var Rtam: UILabel!
    @IBOutlet weak var Rmasa: UILabel!
    @IBOutlet weak var Rqueso: UILabel!
    @IBOutlet weak var Ringredientes: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        Rtam.text = obtiene01
        Rmasa.text = obtiene02
        Rqueso.text = obtiene03
        Ringredientes.text = obtiene04
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
