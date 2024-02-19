//
//  File.swift
//  Lamina54
//
//  Created by Fernando Cuatro on 2/15/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

class Operarios {
    private var sueldos:[Int]=[0,0,0,0,0]
    
    init() {
        for f in 0...4 {
            print("Ingrese valor del sueldo: ")
            self.sueldos[f] = Int(readLine()!)!
        }
    }
    
    func imprimir() {
        for f in 1...4 {
            print(self.sueldos[f])
        }
    }
}
