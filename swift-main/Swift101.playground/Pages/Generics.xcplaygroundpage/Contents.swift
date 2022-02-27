/*:
 # Generics

 */
struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}
/*es un lifo la pila. ultimo que entra primero que sale*/
var pila = Stack<String>()
pila.push("Heelo")
pila.push("Boring")
pila.pop()


// Crea una funcion generica que imprima por pantall
struct printScreen<T>{
    func push (_ cadena:T){
        print(cadena)
    }
}
//o tambien se puede hacer
func printG<T>(p:T){
    print(p)
}
printG(p: "P")
// Crea un Cola generica
var pilaC = printScreen<Any>()
pilaC.push("hello")
pilaC.push("world")
pila.pop()

// Crea una calculadora generia que sume, reste y multiplique de manera generica
struct calculadora<T>{
    func sum(elemento1:T,elemento2:T)-> T{//para resolver esto utilizaremos un protocolo que haga las operaciones
        return  elemento1 + elemento2
    }
    func resta(elemento1:T,elemento2:T)-> T{
       
        return elemento1 + elemento2
    }
    func multiplicacion(elemento1:T,elemento2:T)-> T{
        return elemento1 + elemento2
    }
    func sum(elemento1:T,elemento2:T)-> T{
        return elemento1 + elemento2
    }
}
//: [Previous](@previous)
//: [Next](@next)
