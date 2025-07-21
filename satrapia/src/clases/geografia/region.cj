package satrapia.clases.geografia

import std.collection.ArrayList


public class Region {
    // Lista de vértices que definen el polígono
    let vertices: ArrayList<Coord>

    public init(vertices: ArrayList<Coord>) {
        this.vertices = vertices
    }

    // Función pública para saber si un punto está dentro de la región
    public func contiene(punto: Coord): Bool {
        return puntoDentroDelPoligono(punto, vertices)
    }


// Función que comprueba si el punto p está sobre el segmento entre a y b
private static func puntoSobreSegmento(p: Coord, a: Coord, b: Coord): Bool {
    // Comprobación de bounding box para descartar rápidamente puntos fuera
    let minX = if (a.x < b.x) {a.x} else {b.x}
    let maxX = if (a.x >= b.x) {a.x} else {b.x}
    let minY = if (a.y < b.y) {a.y} else {b.y}
    let maxY = if (a.y >= b.y) {a.y} else {b.y}

    if (p.x < minX || p.x > maxX || p.y < minY || p.y > maxY) {
        return false
    }

    // Cálculo del área del triángulo (si es 0, los puntos son colineales)
    let area = (b.x - a.x) * (p.y - a.y) - (p.x - a.x) * (b.y - a.y)

    // Consideramos colineales si el valor absoluto es muy cercano a 0
    return area < 1
}

    private static func puntoDentroDelPoligono(p: Coord, poligono: ArrayList<Coord>): Bool {
        var dentro = false
        var i = 0
        var j = poligono.size - 1

        while (i < poligono.size) {
            let vi = poligono[i]
            let vj = poligono[j]

            if (puntoSobreSegmento(p,vi,vj)) {
               return true
            }

            j = i
            i += 1
        }

        i = 0
        j = poligono.size - 1

        while (i < poligono.size) {
            let vi = poligono[i]
            let vj = poligono[j]

            if (((vi.y > p.y) != (vj.y > p.y)) &&
               (p.x < (vj.x - vi.x) * (p.y - vi.y) / (vj.y - vi.y) + vi.x)) {
                dentro = !dentro
            }

            j = i
            i += 1
        }

        return dentro
    }

    public func toString(): String {
        var s = "Región con vértices: ["
        for (i in 0..vertices.size) {
            s += vertices[i].toString()
            if (i < vertices.size - 1) {
                s += ", "
            }
        }
        s += "]"
        return s
    }
}

/* main() {
    let puntos = ArrayList<Coord>()
    puntos.add(Coord(0, 0))
    puntos.add(Coord(0, 2))
    puntos.add(Coord(2, 2))
    puntos.add(Coord(2, 0))

    let region = Region(puntos)

    print(region.toString())

    // Probamos algunos puntos
    probarPunto(Coord(1, 1), region)  // Dentro
    probarPunto(Coord(3, 3), region)  // Fuera
    probarPunto(Coord(0, 0), region)  // En borde
    probarPunto(Coord(2, 1), region)  // En borde
}

func probarPunto(punto: Coord, region: Region) {
    if (region.contiene(punto)) {
        print("El punto ${punto.toString()} esta dentro de la region.")    
    }
    else {
        print("El punto ${punto.toString()} esta fuera de la region.")    
    }
} */