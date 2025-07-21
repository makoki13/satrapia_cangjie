package satrapia.clases.edificios

import satrapia.clases.geografia.Coord

public class Edificio {
    let punto: Coord

    public init (p: Coord) {
        this.punto = p
    }

    public func getPosicion() : Coord {
        return this.punto
    }
}