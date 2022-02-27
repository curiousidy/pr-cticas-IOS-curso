
struct TijerasPapelPiedra {
    var marcadorP1 = 0
    var marcadorP2 = 0
    /*
     - Definiendo las reglas de negocio
     - Tijera gana a papel
     - Papel gana a Piedra
     - Piedra gana a Tijeras
     - Si son iguales empatan
     - Cada vez que un jugador gana se añade al marcador
     -
     - El juego termina cuando un jugador llega a 3 victorias
     */
    mutating func play(){
        repeat{
           var result = compare(p1: TPP.allCases.randomElement()!, p2: TPP.allCases.randomElement()!)
            switch result {
            case .gana:
                print("jugador 1 gana")
            case .pierde:
                print("jugador 2 gana")
            case .empata:
                print("empate")
            }
        }while (!endGame())
    }
    
    
    func endGame()-> Bool {
        if marcadorP1 == 3 || marcadorP2 == 3{
            return true
        }
        return false
    }
    
   mutating func compare(p1:TPP, p2:TPP)->Result{
               if p1 == .papel && p2 == .papel{
                   return .empata
               }
       
               if p1 == .tijera && p2 == .papel{
                   return .gana
               }
               
               if p1 == .papel && p2 == .piedra{
                   return .gana
               }
               
               if p1 == .piedra && p2 == .tijera{
                   marcadorP1 += 1
                   return .gana
               }
               
               
               marcadorP2 += 1
               return .pierde
       
   }
}

enum TPP:CaseIterable {
    case tijera
    case papel
    case piedra
}
enum Result {
    case  gana
    case pierde
    case empata
}
