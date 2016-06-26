//
//  Confirmacion.swift
//  CrearPizza
//
//  Created by SebasFiol on 24/6/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import UIKit

class Confirmacion: UIViewController {
    
    var tamanyoPizza:String = ""
    var tipoMasa:String = ""
    var tipoQueso:String = ""
    var selIngrediente1:String = ""
    var selIngrediente2:String = ""
    var selIngrediente3:String = ""
    var selIngrediente4:String = ""
    var selIngrediente5:String = ""

    @IBOutlet weak var tamanyo: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingrediente1: UILabel!
    @IBOutlet weak var ingrediente2: UILabel!
    @IBOutlet weak var ingrediente3: UILabel!
    @IBOutlet weak var ingrediente4: UILabel!
    @IBOutlet weak var ingrediente5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tamanyo.text = tamanyoPizza
        self.masa.text = tipoMasa
        self.queso.text = tipoQueso
        self.ingrediente1.text = selIngrediente1
        self.ingrediente2.text = selIngrediente2
        self.ingrediente3.text = selIngrediente3
        self.ingrediente4.text = selIngrediente4
        self.ingrediente5.text = selIngrediente5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func confirmarPedido(sender: AnyObject) {
        if self.tamanyo.text == "" && self.masa.text == "" && self.queso.text == "" && self.ingrediente1.text == "" {
            let alert = UIAlertController(title: "Alerta", message: "No ha seleccionado nada en las pasos anteriores.", preferredStyle: .Alert)
            let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                //NSLog("You pressed button OK")
            }
            
            alert.addAction(defaultAction)
            
            presentViewController(alert, animated: true, completion:nil)

        }
    }

}
