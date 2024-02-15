//
//  main.swift
//  Presentacion
//
//  Created by Fernando Cuatro on 2/13/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation
    
// variables
var cantidadMenor300 = 0
var cantidadMayor300 = 0
var gastoTotal = 0

print("Ingrese la cantidad de empleados:");
if let cantidadEmpleados = Int(readLine() ?? "0") {
    for i in stride(from: 1, through: cantidadEmpleados, by: 1) {
        print("Ingrese el sueldo del empleado \(i):")
        if let sueldo = Int(readLine() ?? "0") {
            gastoTotal += sueldo
            
            if sueldo >= 100 && sueldo <= 300 {
                cantidadMenor300 += 1
            } else if sueldo > 300 {
                cantidadMayor300 += 1
            }
        } else {
            print("Ingrese un valor válido para el sueldo.")
        }
    }
    
    print("Cantidad de empleados que cobran entre $100 y $300: \(cantidadMenor300)")
    print("Cantidad de empleados que cobran más de $300: \(cantidadMayor300)")
    print("Gasto total en sueldos: $\(gastoTotal)")
} else {
    print("Ingrese un valor válido para la cantidad de empleados.")
}
