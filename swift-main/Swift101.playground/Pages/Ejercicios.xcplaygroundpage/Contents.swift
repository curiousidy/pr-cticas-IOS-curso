//: [Previous](@previous)

import Foundation

//* Crea un juego de tijera papel o piedra ( si puedes usar emojis), donde dos jugadores se enfrenten al mejor de tres y se imprima por consola cada uno de las jugadas y el jugador ganador */

//Puedes usar cualquiera de estas funciones para hacer números random
let randomInt = Int.random(in: 0..<6)
let randomDouble = Double.random(in: 2.71828...3.14159)
let randomBool = Bool.random()


/*
 Extiende la clase Bool de manera que tenga la funciona toggle para invertir su valor es decir si vale true y lanzo al funcion toggle cambiara a false
 */

extension Bool{
    mutating func onOff()-> Bool{
        self = !self
        return self
    }
}
var interruptor = false
print(interruptor.onOff())


/* Crea la clase persona con las propiedades nombre y aplledis y extiendla con la funciona iniiciales que devolvera las iniciles de las persona en Mayusuclas y sin espacios ejemeplo Aarón Lopez -> AL */
struct Person{
    var nombre:String = ""
    var apellido:String = ""
}

extension Person{
    func inicial ()-> String{
        return """
        \(self.nombre.capitalize())
        \(self.apellido.capitalize())
        """
    }
}
extension String{
    func capitalize()->String{
        guard let n = self.first else{
            return ""
        }
        return String(n.uppercased())
    }
}
var p = Person(nombre:"pepe",apellido:"gotera")
p.inicial()

/* Extiende la clase double para transformar el valor a toFarenheit y toCelcius, de tal manera que supondremos que el valor del tipo double es Celcius cuando convertimos a Farenheit y Farenheit cuando convertimos a Celcius */
extension Double{
    enum Unidades {
        case faren, celc,euros,dolares
            
        }
    func conversion(n:Unidades) -> Double{
        switch n {
        case .faren:
            return self*2
        case .celc:
            return self*3
        case .euros:
            return self * 4
        case .dolares:
            return self * 5
        }
    }
}
var r:Double = 9
r.conversion(n: .faren)

/* Extendiende la clase Double para que añada euros y dolares en formato string al valor del double*/
print("\(r.conversion(n: .euros))🤑")
print("\(r.conversion(n: .dolares))💶")

/*
 Dado el protocolo*/

protocol Convert  {
    
    var csvLine: String { get }

    var totalCharacterCount: Int { get }
    
    var wordCount: Int { get }
    
    func wordCharacterCount() -> [Int]
    
}

//Conforma el protocolo para la clase Array pero solo si es de tipo String
/*
extension Array:Convert where Element == String {
    
    
    
}*/


// Extiende la clase Array cuando los elementos son de tipo Int para calcular la media (y la mediana si puedes)


/*Extiende la clase String para comprobar si */
// Es un palindromo
// Para convertir a Bool si la palabra es Si,si,SI, yes,YES,YeS, True, true-> sera verdadero y te haces una idea de cuales son falsas


//: [Next](@next)
