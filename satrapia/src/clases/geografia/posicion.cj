package satrapia.clases.geografia

public class Posicion {
    public var coordenadas: Coordenadas = Coordenadas(0,0)

    init (x: IntNative, y: IntNative) {
        this.coordenadas.x = x
        this.coordenadas.y = y
    }

    public func setX(x: IntNative): Unit {
        this.coordenadas.x = x
    }

    public func setY(y: IntNative): Unit {
        this.coordenadas.y = y
    }
}