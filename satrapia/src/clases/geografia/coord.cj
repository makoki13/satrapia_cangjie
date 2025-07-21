package satrapia.clases.geografia

public class Coord {
    let x: IntNative
    let y: IntNative

    public init (x: IntNative, y: IntNative) {
        this.x = x
        this.y = y
    }

    public func esIgual(other: Coord): Bool {
        return this.x == other.x && this.y == other.y
    }

    public func toString(): String {
        return "(${x}, ${y})"
    }
}
