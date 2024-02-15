//
//  main.swift
//  EjercicioFabrica
//
//  Created by Fernando Cuatro on 2/14/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

print("Ingrese la cantidad de piezas a procesar:")
guard let cantidadPiezasStr = readLine(), let cantidadPiezas = Int(cantidadPiezasStr) else {
    print("Cantidad de piezas inválida.");
    fatalError()
}

var piezasAptas = 0

for i in 1...cantidadPiezas {
    print("Ingrese la longitud de la pieza \(i):")
    guard let longitudStr = readLine(), let longitud = Double(longitudStr) else {
        print("Longitud inválida para la pieza \(i).")
        continue
    }
    
    if longitud >= 1.20 && longitud <= 1.30 {
        piezasAptas += 1
    }
}

print("Cantidad de piezas aptas en el lote: \(piezasAptas)")
