//
//  MyClass.swift
//  FunnyNumber
//
//  Created by MasterUNG on 3/6/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import Foundation

class MyClass {
    
//    Explicit
    var myNumberInt: Int = 0
    var showNumberStrings = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    
    
    func sentNumber() -> String {
        return showNumberStrings[myNumberInt]
    }
    
    
    
    func decreseNumber(numberInt: Int) -> Int {
        
        let resultInt: Int = numberInt - 1
        return resultInt
        
    
    }
    
    func increaseNumber(numberInt: Int) -> Int {
        return numberInt + 1
        
    }
    
    
    
    
    
    
    
    
    
}





