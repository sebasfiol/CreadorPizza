//
//  Ingredientes.swift
//  CrearPizza
//
//  Created by SebasFiol on 24/6/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {

    var numIngredientes:Int = 0
    var tamanyoPizza:String=""
    var tipoMasa:String=""
    var tipoQueso:String=""
    
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var pinya: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    @IBOutlet weak var surimi: UISwitch!
    @IBOutlet weak var tamanyo: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingrediente1: UILabel!
    @IBOutlet weak var ingrediente2: UILabel!
    @IBOutlet weak var ingrediente3: UILabel!
    @IBOutlet weak var ingrediente4: UILabel!
    @IBOutlet weak var ingrediente5: UILabel!
    @IBOutlet weak var siguiente: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ingrediente1.text = ""
        self.ingrediente2.text = ""
        self.ingrediente3.text = ""
        self.ingrediente4.text = ""
        self.ingrediente5.text = ""
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Confirmacion
        sigVista.tamanyoPizza = tamanyoPizza
        sigVista.tipoMasa = tipoMasa
        sigVista.tipoQueso = tipoQueso
        sigVista.selIngrediente1 = self.ingrediente1.text!
        sigVista.selIngrediente2 = self.ingrediente2.text!
        sigVista.selIngrediente3 = self.ingrediente3.text!
        sigVista.selIngrediente4 = self.ingrediente4.text!
        sigVista.selIngrediente5 = self.ingrediente5.text!
    }

    
    override func viewWillAppear(animated: Bool) {
        self.tamanyo.text = tamanyoPizza
        self.masa.text = tipoMasa
        self.queso.text = tipoQueso
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cambioJamon(sender: AnyObject) {
        if self.jamon.on {
            numIngredientes = numIngredientes + 1
        
            if numIngredientes == 1 {
                self.ingrediente1.text = "Jamón"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Jamón"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Jamón"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Jamón"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Jamón"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }

    @IBAction func cambioPepperoni(sender: AnyObject) {
        if self.pepperoni.on {
            numIngredientes = numIngredientes + 1
            
            if numIngredientes == 1 {
                self.ingrediente1.text = "Pepperoni"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Pepperoni"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Pepperoni"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Pepperoni"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Pepperoni"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }
 
    @IBAction func cambioPavo(sender: AnyObject) {
        if self.pavo.on {
            numIngredientes = numIngredientes + 1
            
            if numIngredientes == 1 {
                self.ingrediente1.text = "Pavo"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Pavo"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Pavo"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Pavo"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Pavo"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }
    
    @IBAction func cambioSalchicha(sender: AnyObject) {
        if self.salchicha.on {
            numIngredientes = numIngredientes + 1
            
            if numIngredientes == 1 {
                self.ingrediente1.text = "Salchicha"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Salchicha"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Salchicha"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Salchicha"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Salchicha"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }
    
    @IBAction func cambioAceituna(sender: AnyObject) {
        if self.aceituna.on {
            numIngredientes = numIngredientes + 1
            
            if numIngredientes == 1 {
                self.ingrediente1.text = "Aceituna"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Aceituna"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Aceituna"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Aceituna"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Aceituna"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }
    
    @IBAction func cambioCebolla(sender: AnyObject) {
        if self.cebolla.on {
            numIngredientes = numIngredientes + 1
            
            if numIngredientes == 1 {
                self.ingrediente1.text = "Cebolla"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Cebolla"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Cebolla"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Cebolla"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Cebolla"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }
    
    @IBAction func cambioPimiento(sender: AnyObject) {
        if self.pimiento.on {
            numIngredientes = numIngredientes + 1
            
            if numIngredientes == 1 {
                self.ingrediente1.text = "Pimiento"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Pimiento"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Pimiento"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Pimiento"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Pimiento"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }
    
    @IBAction func cambioPinya(sender: AnyObject) {
        if self.pinya.on {
            numIngredientes = numIngredientes + 1
            
            if numIngredientes == 1 {
                self.ingrediente1.text = "Piña"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Piña"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Piña"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Piña"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Piña"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }
    
    @IBAction func cambioAnchoa(sender: AnyObject) {
        if self.anchoa.on {
            numIngredientes = numIngredientes + 1
            
            if numIngredientes == 1 {
                self.ingrediente1.text = "Anchoa"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Anchoa"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Anchoa"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Anchoa"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Anchoa"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }
    
    @IBAction func cambioSurimi(sender: AnyObject) {
        if self.surimi.on {
            numIngredientes = numIngredientes + 1
            
            if numIngredientes == 1 {
                self.ingrediente1.text = "Surimi"
            }
            
            if numIngredientes == 2 {
                self.ingrediente2.text = "Surimi"
            }
            
            if numIngredientes == 3 {
                self.ingrediente3.text = "Surimi"
            }
            
            if numIngredientes == 4 {
                self.ingrediente4.text = "Surimi"
            }
            
            if numIngredientes == 5 {
                self.ingrediente5.text = "Surimi"
            }
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
            
            if numIngredientes > 5 {
                siguiente.enabled = false
                let alert = UIAlertController(title: "Alerta", message: "Máximo 5 ingredientes", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default) { (alert: UIAlertAction!) -> Void in
                    //NSLog("You pressed button OK")
                }
                
                alert.addAction(defaultAction)
                
                presentViewController(alert, animated: true, completion:nil)
            }
        }
        else {
            numIngredientes = numIngredientes - 1
            
            if numIngredientes == 0 {
                siguiente.enabled = false
            }
            
            if numIngredientes > 0 && numIngredientes < 6 {
                siguiente.enabled = true
            }
        }
    }
    
}
