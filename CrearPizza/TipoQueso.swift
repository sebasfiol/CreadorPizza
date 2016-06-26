//
//  TipoQueso.swift
//  CrearPizza
//
//  Created by SebasFiol on 24/6/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import UIKit

class TipoQueso: UIViewController {
    
    var tamanyoPizza:String = ""
    var tipoMasa:String = ""
    
    @IBOutlet weak var tipoQueso: UISegmentedControl!
    @IBOutlet weak var tamanyo: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.queso.text = ""
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Ingredientes
        sigVista.tamanyoPizza = tamanyoPizza
        sigVista.tipoMasa = tipoMasa
        sigVista.tipoQueso = self.queso.text!
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tamanyo.text = tamanyoPizza
        self.masa.text = tipoMasa
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cambioQueso(sender: AnyObject) {
        if self.tipoQueso.selectedSegmentIndex == 0 {
            self.queso.text = "Mozarela"
        }
        
        if self.tipoQueso.selectedSegmentIndex == 1 {
            self.queso.text = "Cheddar"
        }
        
        if self.tipoQueso.selectedSegmentIndex == 2 {
            self.queso.text = "Parmesano"
        }
        
        if self.tipoQueso.selectedSegmentIndex == 3 {
            self.queso.text = "Sin queso"
        }
    }

}
