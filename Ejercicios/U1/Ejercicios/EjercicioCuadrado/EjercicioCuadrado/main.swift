//
//  main.swift
//  EjercicioCuadrado
//
//  Created by Fernando Cuatro on 2/15/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

func calcularPerimetro(lado: Double) -> Double {
    return 4 * lado
}

func calcularSuperficie(lado: Double) -> Double {
    return lado * lado
}

func imprimirResultados(lado: Double) {
    let perimetro = calcularPerimetro(lado: lado)
    let superficie = calcularSuperficie(lado: lado)
    
    print("El perímetro del cuadrado es: \(perimetro)")
    print("La superficie del cuadrado es: \(superficie)")
}

// Ejemplo de uso:
let ladoDelCuadrado = 5.0
imprimirResultados(lado: ladoDelCuadrado)	
