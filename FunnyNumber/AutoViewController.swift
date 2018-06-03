//
//  AutoViewController.swift
//  FunnyNumber
//
//  Created by MasterUNG on 3/6/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class AutoViewController: UIViewController {
    
//    Explicit
    var myTime = Timer()
    var numberInt: Int = 0
    
    
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    @IBAction func pauseButton(_ sender: Any) {
        
        showLog(message: "Pause Click")
        myTime.invalidate()
        
    }
    
    
    
    @IBAction func playButton(_ sender: Any) {
        
        showLog(message: "Play Click")
        
        numberInt = Int(numberLabel.text!)!
        
        myTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(AutoViewController.playing), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func playing() -> Void {
        
        numberInt = numberInt + 1
        numberLabel.text = String(numberInt)
        
    }
    
    
    
    func showLog(message: String) -> Void {
        print("\(message)")
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
