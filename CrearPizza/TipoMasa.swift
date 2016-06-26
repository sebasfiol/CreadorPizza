//
//  TipoMasa.swift
//  CrearPizza
//
//  Created by SebasFiol on 24/6/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import UIKit

class TipoMasa: UIViewController {

    var tamanyoPizza:String = ""
    
    @IBOutlet weak var tipoMasa: UISegmentedControl!
    @IBOutlet weak var tamanyo: UILabel!
    @IBOutlet weak var masa: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        self.tamanyo.text = tamanyoPizza
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.masa.text = ""
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! TipoQueso
        sigVista.tamanyoPizza = tamanyoPizza
        sigVista.tipoMasa = self.masa.text!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cambioMasa(sender: AnyObject) {
        if self.tipoMasa.selectedSegmentIndex == 0 {
            self.masa.text = "Delgada"
        }
        
        if self.tipoMasa.selectedSegmentIndex == 1 {
            self.masa.text = "Crujiente"
        }
        
        if self.tipoMasa.selectedSegmentIndex == 2 {
            self.masa.text = "Gruesa"
        }

    }

}
