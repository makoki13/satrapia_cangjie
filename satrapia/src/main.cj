package satrapia

import satrapia.clases.geografia.Coord
import satrapia.clases.geografia.Mar
import satrapia.clases.geografia.Region

import satrapia.clases.edificios.Edificio

import std.collection.ArrayList

main(): Int64 {
    /* let coordenadas = Coord(0,0,0)
    println("hola pollitos")
    println(coordenadas.toString())
    println(coordenadas.esIgual(Coord(1, 0, 0)))
    
    let t: Mar = Mar()

    print("Nombre ${t.nombre} Dificultad: ${t.costeDesplazamiento} Es agua ${t.esAgua}\n") */

    //let miTest: Testing = Testing()
    //println(miTest.muestra())

    /* let puntos = ArrayList<Coord>()
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
    probarPunto(Coord(2, 1), region)  // En borde */

    let palacio: Edificio = Edificio(Coord(5,5))
    println(palacio.getPosicion().toString())

    return 0
}

/* func probarPunto(punto: Coord, region: Region) {
    if (region.contiene(punto)) {
        print("El punto ${punto.toString()} esta dentro de la region.\n")    
    }
    else {
        print("El punto ${punto.toString()} esta fuera de la region.\n")    
    }
} */