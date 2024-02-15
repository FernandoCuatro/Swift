//
//  main.swift
//  EjercicioPeso
//
//  Created by Fernando Cuatro on 2/14/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

// Variables para contar las piezas en cada categoría
var pesoEntre98y102: Int = 0
var pesoMasDe102: Int = 0
var pesoMenosDe98: Int = 0
var totalPiezas: Int = 0

// Bucle para ingresar el peso de las piezas
while true {
    print("Ingrese el peso de la pieza en kilogramos (ingrese 0 para terminar):")
    if let peso = Double(readLine() ?? ""), peso != 0 {
        totalPiezas += 1
        
        // Determinar en qué categoría cae el peso de la pieza
        if peso > 10.2 {
            pesoMasDe102 += 1
        } else if peso < 9.8 {
            pesoMenosDe98 += 1
        } else {
            pesoEntre98y102 += 1
        }
    } else {
        break // Salir del bucle si se ingresa 0 o un valor no válido
    }
}

// Imprimir los resultados
print("a) Resultados:")
print("Piezas con peso entre 9.8 Kg. y 10.2 Kg.: \(pesoEntre98y102)")
print("Piezas con peso más de 10.2 Kg.: \(pesoMasDe102)")
print("Piezas con peso menos de 9.8 Kg.: \(pesoMenosDe98)")
print("b) Cantidad total de piezas procesadas: \(totalPiezas)")
