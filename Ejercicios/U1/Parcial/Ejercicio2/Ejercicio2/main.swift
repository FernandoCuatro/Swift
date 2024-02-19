//
//  main.swift
//  Ejercicio2
//
//  Created by Fernando Cuatro on 2/17/24.
//  Copyright © 2024 Fernando Cuatro. All rights reserved.
//

import Foundation

/*
 Si x, y, z son variables de tipo double con valores x= 88, y = 3.5, z = -5.2, determina el valor de
 las siguientes expresiones aritméticas. Obtén el resultado de cada expresión con un máximo
 de cuatro decimales.
*/

let x: Double = 88
let y: Double = 3.5
let z: Double = -5.2

// a) x + y + z
let resultado_a = x + y + z
print("a) Resultado: \(String(format: "%.4f", resultado_a))")

// b) 2 * y + 3 * (x - z)
let resultado_b = 2 * y + 3 * (x - z)
print("b) Resultado: \(String(format: "%.4f", resultado_b))")

// c) x / y
let resultado_c = x / y
print("c) Resultado: \(String(format: "%.4f", resultado_c))")

// d) x % y
let resultado_d = x.truncatingRemainder(dividingBy: y)
print("d) Resultado: \(String(format: "%.4f", resultado_d))")

// e) x / (y + z)
let resultado_e = x / (y + z)
print("e) Resultado: \(String(format: "%.4f", resultado_e))")

// f) (x / y) + z
let resultado_f = (x / y) + z
print("f) Resultado: \(String(format: "%.4f", resultado_f))")

// g) 2 * x / 3 * y
let resultado_g = 2 * x / (3 * y)
print("g) Resultado: \(String(format: "%.4f", resultado_g))")

// h) 2 * x / (3 * y)
let resultado_h = 2 * x / (3 * y)
print("h) Resultado: \(String(format: "%.4f", resultado_h))")

// i) x * y % z
let resultado_i = (x * y).truncatingRemainder(dividingBy: z)
print("i) Resultado: \(String(format: "%.4f", resultado_i))")

// j) x * (y % z)
let resultado_j = x * (y.truncatingRemainder(dividingBy: z))
print("j) Resultado: \(String(format: "%.4f", resultado_j))")

// k) 3 * x - z - 2 * x
let resultado_k = 3 * x - z - 2 * x
print("k) Resultado: \(String(format: "%.4f", resultado_k))")

// l) 2 * x / 5 % y
let resultado_l = (2 * x / 5).truncatingRemainder(dividingBy: y)
print("l) Resultado: \(String(format: "%.4f", resultado_l))")

// m) x - 100 % y % z
let resultado_m = x - (100.truncatingRemainder(dividingBy: y)).truncatingRemainder(dividingBy: z)
print("m) Resultado: \(String(format: "%.4f", resultado_m))")

// n) x - y - z * 2
let resultado_n = x - y - z * 2
print("n) Resultado: \(String(format: "%.4f", resultado_n))")
