//
//  main.swift
//  EjercicioValores
//
//  Created by Fernando Cuatro on 2/15/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

func obtenerNumeroDesdeTeclado() -> Double {
    guard let entrada = readLine(), let numero = Double(entrada) else {
        print("Entrada inválida. Introduce un número válido:")
        return obtenerNumeroDesdeTeclado()
    }
    return numero
}

func obtenerMayorMenor() {
    print("Ingresa el primer número:")
    let numero1 = obtenerNumeroDesdeTeclado()
    
    print("Ingresa el segundo número:")
    let numero2 = obtenerNumeroDesdeTeclado()
    
    print("Ingresa el tercer número:")
    let numero3 = obtenerNumeroDesdeTeclado()
    
    let mayor = max(numero1, max(numero2, numero3))
    let menor = min(numero1, min(numero2, numero3))
    
    print("El mayor número es: \(mayor)")
    print("El menor número es: \(menor)")
}

// Llamamos a la función para obtener el mayor y el menor de los tres números ingresados
obtenerMayorMenor()
