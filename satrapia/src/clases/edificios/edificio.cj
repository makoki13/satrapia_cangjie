package satrapia.clases.edificios

import satrapia.clases.geografia.Coordenadas

public class Edificio {
    let punto: Coordenadas

    public init (p: Coordenadas) {
        this.punto = p
    }

    public func getPosicion() : Coordenadas {
        return this.punto
    }
}