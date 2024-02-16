//
//  main.swift
//  EjercicioCuadrante
//
//  Created by Fernando Cuatro on 2/15/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

// funcion para la validacion del cuadrante
func determinarCuadrante(x: Double, y: Double) -> String {
    if x > 0 && y > 0 {
        return "El punto está en el primer cuadrante."
    } else if x < 0 && y > 0 {
        return "El punto está en el segundo cuadrante."
    } else if x < 0 && y < 0 {
        return "El punto está en el tercer cuadrante."
    } else if x > 0 && y < 0 {
        return "El punto está en el cuarto cuadrante."
    } else if x == 0 && y != 0 {
        return "El punto está sobre el eje Y."
    } else if y == 0 && x != 0 {
        return "El punto está sobre el eje X."
    } else {
        return "El punto está en el origen."
    }
}

// funcion para imprimir los datos llamando la funcion anterior
func imprimirCuadranteParaPunto(x: Double, y: Double) {
    let cuadrante = determinarCuadrante(x: x, y: y)
    print(cuadrante)
}

// imprimimos para el primer cuadrante
let punto1 = (x: 3.0, y: 4.0)
imprimirCuadranteParaPunto(x: punto1.x, y: punto1.y)

// tambien para el segundo cuadrante
let punto2 = (x: -2.0, y: 5.0)
imprimirCuadranteParaPunto(x: punto2.x, y: punto2.y)
