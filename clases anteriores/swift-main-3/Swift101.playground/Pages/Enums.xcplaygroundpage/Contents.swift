/*:
 # Enums
 */

import Foundation

enum PuntosCardinales: CaseIterable {
    case norte
    case sur
    case este
    case oeste
}

PuntosCardinales.este

// ¿Qué crees que pasará con la siguiente comparación?
/*if PuntosCardinales.norte == 0 {
    print("algp")
}*/

var puntoCardinal : PuntosCardinales

puntoCardinal = .este

if puntoCardinal == .oeste {
    puntoCardinal = .norte
}


// crea un switch con todos los posibles valores del objeto puntos cardinales
let a : PuntosCardinales = .norte
switch a{
case .norte:
    print(a)
case .sur:
    print(a)
case .este:
    print(a)
case .oeste:
    print(a)
}


//utiliza el enum como iterable

//enum PuntosCardinales: CaseIterable
//utiliza la propiedad allases ara imprimar cuantos elementos tiene el enum
//crea un iteracion de todos los casos del enum
for c in PuntosCardinales.allCases{
    print(c)
}
// crea una funcion que se le pase un valor de los puntos cardinaes y devuelva la dirección contraria
func puntoCardinal(name:PuntosCardinales)->PuntosCardinales{
    switch name{
    case .norte:
        return PuntosCardinales.sur
    case .sur:
        return PuntosCardinales.norte
    case .este:
        return PuntosCardinales.oeste
    case .oeste:
        return PuntosCardinales.este
    }
    
}
puntoCardinal(name: .norte)


// Se pueden crear enums de tipos y asignarles valor
enum Monedas: String {
    case Euro = "€"
    case Dolar = "$"
}

Monedas.Euro.rawValue

// Crea un enum de tipo In que tenga tres tipos de tallas M L XL y su talla númerica asociada
enum TipoTallas :Int,CaseIterable{
    case S = 20
    case M = 30
    case L = 40
    case XL = 50
}
for i in TipoTallas.allCases{
    print(i)
}
//Conviertela en iterable e imprimer en un array todos los valores raw
// Crea un enum de tipo Int pero NO LE ASIGNES VALORES
/*enum TipoTallas :Int,CaseIterable{
    case S
    case M
    case L
    case XL
}
for i in TipoTallas.allCases{
    print(i)
}*/
//¿Que valores asigna por defecto?

enum Dias {
    case Lunes
    case Martes
    case Miercoles
    case Jueves
    case Viernes
    case Sabado
    case Domingo

    var dayType: String {
        self == .Sabado || self == .Domingo ? "Festivo" : "Laboral"
    }
//self indica que propiedad soy yo en este momento
//
}

// Que crees que hace?
// intenta escribir la expresion que te indiac que los miercoles son dias Laborales
let dia: Dias = .Lunes
dia.dayType

//Asocciated Values
//se pueden declarar los valores de los enum como si fueran funciones
enum Result {
    case success(String)
    case failure(Int)
}

let operation = Result.failure(401)


switch operation {
case .success(let result):
    print(result)
case .failure(401):
    print("Permissions")
case .failure(404):
    print("Not Found")
case .failure(let errorCode) where errorCode > 500:
    print("El backend NO lo entiende")
case .failure(let errorCode):
    print("Ni idea \(errorCode)")

}


/* Que pasará si tratamos de hacerlo directamente (Equatable)
if operation == .failure(404){
    print("No encontrado")
}*/


// Crea un enum EstadoFisico, con un caso pero de tipo Int, otro altura de tipo int



// Los Optionales ? SON ENUMS ¿Sorprendido, trata de crear un tipo enum que represente un opcional?



//Mutando Enums

enum LuzSalon {
    case off, on
    mutating func pulsarInterruptor() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var salon = LuzSalon.on
salon.pulsarInterruptor()

print(salon)

// Crea un enum Dia, con dos casos, dia y noche, y dos funcionaes de mutacion, anocher y amanecer que cambie los valores, consume en una variable
enum cambioTiempo {
    case dia, noche
    mutating func anochecer() {
            self = .noche
    }
    mutating func amanecer() {
            self = .dia
    }
}

    var estadoDia = cambioTiempo.dia
    estadoDia.anochecer()
    print(estadoDia)

//: [Previous](@previous)
//: [Next](@next)
