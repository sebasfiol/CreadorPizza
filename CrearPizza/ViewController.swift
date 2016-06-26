//
//  ViewController.swift
//  CrearPizza
//
//  Created by SebasFiol on 9/5/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var selectorTamanyo: UISegmentedControl!
    
    @IBOutlet weak var tamanyo: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tamanyo.text = ""
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tamanyoPizza:String = self.tamanyo.text!
        let sigVista = segue.destinationViewController as! TipoMasa
        sigVista.tamanyoPizza = tamanyoPizza
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambioTamanyo(sender: AnyObject) {
        if self.selectorTamanyo.selectedSegmentIndex == 0 {
            self.tamanyo.text = "Pequeña"
        }
        
        if self.selectorTamanyo.selectedSegmentIndex == 1 {
            self.tamanyo.text = "Mediana"
        }
        
        if self.selectorTamanyo.selectedSegmentIndex == 2 {
            self.tamanyo.text = "Grande"
        }

    }
}

