package satrapia.clases.geografia

public class Mapa {
    var TAMANYO = 100
    var FILA = 10
    var lista: Array<Punto>

    public init() {
        this.TAMANYO = 100
        this.FILA = 10
        this.lista = Array<Punto>()
    }

    public func getTamanyoTotal(): Int64 {
        return this.TAMANYO
    }

    public func setTamanyo(t: Int64): Unit {
        this.TAMANYO = t
    }

    public func getTamanyoFilas(): Int64 {
        return this.FILA
    }

    public func setTamanyoFilas(t: Int64): Unit {
        this.FILA = t
    }

    public func getNumFilas(): Int64 {
        return this.TAMANYO / this.FILA
    }

    public func generaMapa(): Unit {
        this.lista = Array<Punto>(
            TAMANYO, 
            {i => Punto(Posicion(IntNative(i),0),Llanura())}
        )
    }
}