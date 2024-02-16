//
//  Persona.swift
//  EjercicioPOO
//
//  Created by Fernando Cuatro on 2/15/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

// la clase de toda la vida
class Persona {
    var nombre:String
    var apellido:String
    
    // constructor predeterminado
    init() {
        // con el self nos referimos a la variable dentro del objeto
        self.nombre = "ETPS4"
        self.apellido = "UTEC"
    }
    
    // constuctor parametrizado (parameterized constructor)
    init(nombre: String, apellido: String) {
        // con el selft nos referimos al objeto
        self.nombre = nombre
        self.apellido = apellido
    }
    
    public func obtenerNombreCompleto () -> String {
        return "\(nombre) \(apellido)"
    }
    
    
    
    
    
    
    
    
}
