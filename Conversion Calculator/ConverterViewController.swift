//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Banderas, Nathaniel C.(MU-Student) on 4/12/18.
//  Copyright © 2018 Banderas, Nathaniel C.(MU-Student). All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UIActionSheetDelegate {
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputDisplay.text = "°C"
        inputDisplay.text = "°F"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func convert(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Choose conversion", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = "°C"
            self.inputDisplay.text = "°F"
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = "°F"
            self.inputDisplay.text = "°C"
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = "km"
            self.inputDisplay.text = "mi"
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = "mi"
            self.inputDisplay.text = "km"
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
