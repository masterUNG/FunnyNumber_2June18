//
//  EnglishViewController.swift
//  FunnyNumber
//
//  Created by MasterUNG on 3/6/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class EnglishViewController: UIViewController {
    
    var myClass = MyClass()
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func decButton(_ sender: Any) {
        
        var currentIndexInt: Int = myClass.myNumberInt
        print("CurrentIndex ==> \(currentIndexInt)")
        
        if currentIndexInt <= 0 {
            currentIndexInt = myClass.showNumberStrings.count
        }
        
        let newIndexInt: Int = myClass.decreseNumber(numberInt: currentIndexInt)
        myClass.myNumberInt = newIndexInt
        print("newIndex ==> \(myClass.myNumberInt)")
        
        numberLabel.text = myClass.sentNumber()
        
        
    }
    
    
    
    @IBAction func startButton(_ sender: Any) {
        
        myClass.myNumberInt = 0
        numberLabel.text = myClass.sentNumber()
        
        
    }
    
    
    
    @IBAction func incButton(_ sender: Any) {
        
        var currentIndexInt: Int = myClass.myNumberInt
        
        currentIndexInt = currentIndexInt + 1
        
        if currentIndexInt >= myClass.showNumberStrings.count {
            currentIndexInt = 0
        }
        
        
        
        myClass.myNumberInt = currentIndexInt
        
        numberLabel.text = myClass.sentNumber()
        
        
        
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
