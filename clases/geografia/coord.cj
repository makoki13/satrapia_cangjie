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
}

/* main() {
    let p: Coord = Coord(10,20)
    print("x: ${p.x} , y: ${p.y} , z: ${p.z}")
} */