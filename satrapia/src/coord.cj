package satrapia

public class Coord {
    let x: IntNative
    let y: IntNative
    let z: IntNative

    init (x: IntNative, y: IntNative) {
        this.x = x
        this.y = y
        this.z = 0
    }

    init (x: IntNative, y: IntNative, z: IntNative) {
        this.x = x
        this.y = y
        this.z = z
    }

    func esIgual(other: Coord): Bool {
        return this.x == other.x && this.y == other.y && this.z == other.z
    }

    func toString(): String {
        return "(${x}, ${y})"
    }
}
