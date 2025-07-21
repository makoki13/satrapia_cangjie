package satrapia

//import clases.geografia.*
import satrapia.test.Testing

main(): Int64 {
    let coordenadas: Coord = Coord(0,0)
    println("hola pollitos")
    println(coordenadas.toString())
    println(coordenadas.esIgual(Coord(1,0)))
    
    let t: Mar = Mar()
    print("Nombre ${t.nombre} Dificultad: ${t.costeDesplazamiento} Es agua ${t.esAgua}\n")

    let miTest: Testing = Testing()
    println(miTest.muestra())

    return 0
}