//
//  ViewController.swift
//  Tipster
//
//  Created by admin on 03/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enteredAmount: UILabel!
    
    @IBOutlet weak var five: UILabel!
    @IBOutlet weak var ten: UILabel!
    @IBOutlet weak var fifteen: UILabel!
    
    
    @IBOutlet weak var tip5: UILabel!
    @IBOutlet weak var tip10: UILabel!
    @IBOutlet weak var tip15: UILabel!
    
    
    @IBOutlet weak var total5: UILabel!
    @IBOutlet weak var total10: UILabel!
    @IBOutlet weak var total15: UILabel!
    
    
    @IBOutlet weak var final5: UILabel!
    @IBOutlet weak var final10: UILabel!
    @IBOutlet weak var final15: UILabel!
    
    @IBOutlet weak var tipsValue: UISlider!
    @IBOutlet weak var groupSizeValue: UISlider!
    
    var percentage = 5.0
    var size = 1
    
    @IBOutlet weak var groupSize: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        enteredAmount.text = ""
    }
    
    @IBAction func clear(_ sender: Any) {
        enteredAmount.text = ""
        tip5.text = "0.0"
        tip10.text = "0.0"
        tip15.text = "0.0"
        
        total5.text = "0.0"
        total10.text = "0.0"
        total15.text = "0.0"
        
        final5.text = "0.0"
        final10.text = "0.0"
        final15.text = "0.0"
    }
    @IBAction func zero(_ sender: Any) {
        if enteredAmount.text?.isEmpty == false{
            enteredAmount.text = enteredAmount.text! + "0"
            calculate()
        }
    }
    @IBAction func dot(_ sender: Any) {
        if enteredAmount.text?.contains(".") == false{
            enteredAmount.text = enteredAmount.text! + "."
        }
    }
    @IBAction func one(_ sender: Any) {
        enteredAmount.text = enteredAmount.text! + "1"
        calculate()
    }
    @IBAction func two(_ sender: Any) {
        enteredAmount.text = enteredAmount.text! + "2"
        calculate()
    }
    @IBAction func three(_ sender: Any) {
        enteredAmount.text = enteredAmount.text! + "3"
        calculate()
    }
    @IBAction func four(_ sender: Any) {
        enteredAmount.text = enteredAmount.text! + "4"
        calculate()
    }
    @IBAction func five(_ sender: Any) {
        enteredAmount.text = enteredAmount.text! + "5"
        calculate()
    }
    @IBAction func six(_ sender: Any) {
        enteredAmount.text = enteredAmount.text! + "6"
        calculate()
    }
    @IBAction func seven(_ sender: Any) {
        enteredAmount.text = enteredAmount.text! + "7"
        calculate()
    }
    @IBAction func eight(_ sender: Any) {
        enteredAmount.text = enteredAmount.text! + "8"
        calculate()
    }
    @IBAction func nine(_ sender: Any) {
        enteredAmount.text = enteredAmount.text! + "9"
        calculate()
    }
    
    func calculate(){
        if enteredAmount.text?.isEmpty == false {
            let amount = Double(enteredAmount.text!)!
            
            let t5 = amount * Double((percentage / 100))
            let t10 = amount * Double(((percentage + 5) / 100))
            let t15 = amount * Double(((percentage + 10) / 100))
            
            tip5.text = "\(t5)"
            tip10.text = "\(t10)"
            tip15.text = "\(t15)"
            
            let tot5 = amount + t5
            let tot10 = amount + t10
            let tot15 = amount + t15
            
            total5.text = "\(tot5)"
            total10.text = "\(tot10)"
            total15.text = "\(tot15)"
            
            final5.text = "\(tot5 / Double(size))"
            final10.text = "\(tot10 / Double(size))"
            final15.text = "\(tot15 / Double(size))"
        }
    }
    
    
    
    @IBAction func tipsSlider(_ sender: Any) {
        percentage = Double(tipsValue.value)
        five.text = "\(Double(round(100 * percentage) / 100))%"
        ten.text = "\(Double(round(100 * (percentage + 5)) / 100))%"
        fifteen.text = "\(Double(round(100 * (percentage + 10)) / 100))%"
        calculate()
    }
    
    
    @IBAction func groupSizeSlider(_ sender: Any) {
        size = Int(groupSizeValue.value)
        groupSize.text = "\(size)"
        calculate()
    }
    


}

