//
//  ViewController.swift
//  FunnyNumber
//
//  Created by MasterUNG on 3/6/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Explicit
    var myClass = MyClass()
    
    
    
//    Get Current Number
    func getCurrentNumber() -> Int {
        
        let numberString: String = numberLabel.text!
        let resultInt: Int = Int(numberString)!
        return resultInt
        
    }
    
    func showLog(message: String) -> Void {
        print("Message ==> \(message)")
    }
    
    func showNumber(numberInt: Int) -> Void {
        let numberString: String = String(numberInt)
        numberLabel.text = numberString
        
    }
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decButton(_ sender: Any) {
        
        let currentNumberInt: Int = getCurrentNumber()
        showLog(message: "currentNumber ==> \(currentNumberInt)")
        
        var resultInt: Int = myClass.decreseNumber(numberInt: currentNumberInt)
        showLog(message: "resultNumber = \(resultInt)")
        
        showNumber(numberInt: resultInt)
        
    }
    
    
    
    @IBAction func startButton(_ sender: Any) {
        showNumber(numberInt: 1)
    }
    
    
    
    @IBAction func incButton(_ sender: Any) {
        
        var currentNumberInt: Int = getCurrentNumber()
        var numberInt: Int = myClass.increaseNumber(numberInt: currentNumberInt)
        showNumber(numberInt: numberInt)
        
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

