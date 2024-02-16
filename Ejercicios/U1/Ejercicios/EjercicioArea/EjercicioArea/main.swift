//
//  main.swift
//  EjercicioArea
//
//  Created by Fernando Cuatro on 2/15/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

// Calculamos el Area del circulo
func calcularAreaCirculo(radio: Double) -> Double {
    return pow(radio, 2) * Double.pi
}

// Calculamos el area del triangulo
func calcularAreaTriangulo(base: Double, altura: Double) -> Double {
    return (base * altura) / 2
}

// Cualculamos el area del cuadrado
func calcularAreaCuadrado(lado: Double) -> Double {
    return lado * lado
}

// en las funciones anteriores tambien pudimos usar _

func calcularAreaDeFigura() {
    print("¿Qué figura quieres calcular? (circulo / triangulo / cuadrado)")
    guard let figura = readLine()?.lowercased() else {
        print("Entrada inválida.")
        return
    }
    
    switch figura {
    case "circulo":
        print("Introduce el radio del círculo:")
        guard let radio = Double(readLine() ?? "") else {
            print("Entrada inválida.")
            return
        }
        let area = calcularAreaCirculo(radio: radio)
        print("El área del círculo es: \(area)")
    case "triangulo":
        print("Introduce la base del triángulo:")
        guard let base = Double(readLine() ?? "") else {
            print("Entrada inválida.")
            return
        }
        print("Introduce la altura del triángulo:")
        guard let altura = Double(readLine() ?? "") else {
            print("Entrada inválida.")
            return
        }
        let area = calcularAreaTriangulo(base: base, altura: altura)
        print("El área del triángulo es: \(area)")
    case "cuadrado":
        print("Introduce el lado del cuadrado:")
        guard let lado = Double(readLine() ?? "") else {
            print("Entrada inválida.")
            return
        }
        let area = calcularAreaCuadrado(lado: lado)
        print("El área del cuadrado es: \(area)")
    default:
        print("Figura no reconocida.")
    }
}

// Llamamos a la función principal para calcular el área de la figura elegida
calcularAreaDeFigura()
