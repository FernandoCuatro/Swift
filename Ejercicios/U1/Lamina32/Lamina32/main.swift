//
//  main.swift
//  Lamina32
//
//  Created by Fernando Cuatro on 2/15/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

var nombre:String = ""
var edad:Int = 0

func inicializar() {
    print("Ingrese nombre:")
    nombre=readLine()!
    
    print("Ingrese edad:")
    edad=Int(readLine()!)!
}

func imprimir() {
    print("Nombre: \(nombre)")
    print("Edad:\(edad)")
}

func esMayorEdad() {
    if (edad>=18) {
        print(nombre," es mayor de edad.")
    } else {
        print(nombre," no es mayor de edad.")
    }
}

inicializar()
imprimir()
esMayorEdad()
