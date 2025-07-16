open public class TipoTerrenos {
    TipoTerrenos(let nombre: String, let costeDesplazamiento: IntNative, let esAgua: Bool) {}
}

 public class Llano <: TipoTerrenos {
    init() {
        super("LLANO", 0, false)
    }
}

public class Colina <: TipoTerrenos {
    init() {
        super("COLINA", 1, false)
    }
}

public class Montanya <: TipoTerrenos {
    init() {
        super("MONTAÑA", 5, false)
    }
}

public class Rio <: TipoTerrenos {
    init() {
        super("RIO", 3, true)
    }
}

public class Mar <: TipoTerrenos {
    init() {
        super("MAR", 5, true)
    }
}

public class Desierto <: TipoTerrenos {
    init() {
        super("Desierto", 2, false)
    }
}

/* main() {
    let t: Mar = Mar()

    print("Nombre ${t.nombre} Dificultad: ${t.costeDesplazamiento} Es agua ${t.esAgua}")
} */