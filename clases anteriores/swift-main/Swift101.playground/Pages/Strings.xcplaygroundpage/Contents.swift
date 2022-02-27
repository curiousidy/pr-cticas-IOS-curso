import Foundation
/*:
 # Strings
 
 Los strings son colleciones de Character, eso quiere decir que podemos acceder tanto a la colleción completa como a cada caracter individualmente
 */

let aString = "Hello World"

//esto es una String multilinea

let autoestopista = """
"Debe ser jueves" -dijo Arthur para sí, inclinándose sobre la cerveza-.
"Nunca puedo aguantar la resaca de los jueves".
"""


/*:
 Tenemos  caractares especiales
 \0 (null character), \\ (backslash), \t (horizontal tab), \n (line feed), \r (carriage return), \" (double quotation mark) and \' (single quotation mark)
 */

//añade una string con al menos dos de los caraecteres especiales
let stringCaracteresEspeciales = "\0,\\,\t,\n,\r,\",\'"
print (stringCaracteresEspeciales)


//Extended String Delimiters

print(#"Ejemplo de string con delimitador extendido //"#)

// ¿ Que hace el # antes y despues del string?-> permite imprimir la barra sin tener que poner doble barra para que detecte una

// Juguemos con los strings

let empty = ""
let empty2 = String()
let empty3: String?


//let empty3: String? = ""  si se compara con empty el resultado es true

//¿Que diferencias crees que hay entre ellas?
//empty == empty2 -> ninguna ambas son vacias
//empty == empty3 ->


//usando el . trata de saber si la strings estaVacia
print(empty.isEmpty)

//concatenando strings

var hello = "Hello"
var world  = "world"
var helloWorld = hello + world

//descomenta la linea siguiente y resuelve el problema
hello += world

//Character
let aCharacter :Character = "H"

//¿Que crees que sucedera en las dos siguientes instruciones?
//let whatType = "A" + aCharacter -> no existe caracter sólo string
//print(type(of: whatType))

var stringWithCharacter = "Hello"
stringWithCharacter.append(aCharacter)
print(type(of: stringWithCharacter))


//interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//crea tres variables, nombre, apellido, dni y un nuevo string interpolado con la union de los tres elementos separador por - y espacios
var nombre = "pepe", apellido = "palote", dni = "111111"
var separacion = "- "
var mensaje = "\(nombre) \(separacion) \(apellido) \(separacion)\(dni)"
print(mensaje)


let unusualMenae🐨 = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
//SI LO DE ARRIBA ES VALIDO, PERO OLVIDA QUE EXISTE


// Subcadenas y operaciones sobre strings

var aLongString = " This is a long string please, play with me"

//abre la documentacion de String y resuelve los siguientes ejericios

//obten en el número de caracteres
aLongString.count

//obten dos cadenas separadas por ,
var texto = aLongString.split(separator: ",")
print("cadena 1  \(texto[0])")
print("cadena 2 \(texto[1])")

//Añade la cadena "Please" al final SIN usar el operador + en la 10 posicion


//convierte toda la cadena a minusculas
aLongString.lowercased()
//convierte toda la cadena a mayusculas
aLongString.uppercased()


//acceder al elemento 4
let indice = aLongString.index(aLongString.startIndex, offsetBy: 4)
aLongString[indice]

//Reemplazar palabras, long por short

aLongString.replacingOccurrences(of: "long", with: "short")

//Añadir elementos delante
aLongString.insert("A", at: aLongString.endIndex)
//Añadir elementos detrás
aLongString.insert("E", at: aLongString.startIndex)

//Insertar un elemento en una posición
let position = aLongString.index(aLongString.startIndex, offsetBy: 4)
var newString = aLongString.insert("B", at: position)
print(newString)

//Buscar el indice de play



//Igualdad
// Dos Strings son iguales cuando SU VALOR es igual



//: [Previous](@previous)
//: [Next](@next)
