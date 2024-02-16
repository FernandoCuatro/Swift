//
//  main.swift
//  EjercicioTriangulo
//
//  Created by Fernando Cuatro on 2/15/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

func ladoMayor(_ lado1: Double, _ lado2: Double, _ lado3: Double) -> Double {
    return max(lado1, max(lado2, lado3))
}

func esEquilatero(_ lado1: Double, _ lado2: Double, _ lado3: Double) -> Bool {
    return lado1 == lado2 && lado2 == lado3
}

func imprimirLadoMayorYEquilatero(_ lado1: Double, _ lado2: Double, _ lado3: Double) {
    let mayor = ladoMayor(lado1, lado2, lado3)
    print("El lado mayor es \(mayor).")
    
    if esEquilatero(lado1, lado2, lado3) {
        print("El triángulo es equilátero.")
    } else {
        print("El triángulo no es equilátero.")
    }
}

// Ejemplo de uso:
let lado1 = 5.0
let lado2 = 5.0
let lado3 = 5.0

imprimirLadoMayorYEquilatero(lado1, lado2, lado3)
