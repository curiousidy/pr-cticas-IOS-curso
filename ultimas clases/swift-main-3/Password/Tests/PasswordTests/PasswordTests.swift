import XCTest
@testable import Password

final class PasswordTests: XCTestCase {
    func testMinCarateres() throws {
        let verifier : PasswordVerifier  = P()/*a la clase o estructura que crees para implementar el protocolo */
        let password : Password   = Ppp (str: "ppppppppppp")/*a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "La contraseña es demasiado corta")
    }
    func testMinCarateres() throws {
        let verifier : PasswordVerifier  = P()/*a la clase o estructura que crees para implementar el protocolo */
        let password : Password   = Ppp (str: "ppppppppppppppp")/*a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "La conraseña es demasiado corta")
    }
}
