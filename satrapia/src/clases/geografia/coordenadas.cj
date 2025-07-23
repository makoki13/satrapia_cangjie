package satrapia.clases.geografia

public class Coordenadas {
    var x: IntNative
    var y: IntNative

    public init (x: IntNative, y: IntNative) {
        this.x = x
        this.y = y
    }

    public func esIgual(other: Coordenadas): Bool {
        return this.x == other.x && this.y == other.y
    }

    public func toString(): String {
        return "(${x}, ${y})"
    }
}
