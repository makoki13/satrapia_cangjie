package satrapia.clases.geografia

open public class TipoTerrenos {
    TipoTerrenos(public let nombre: String, public let costeDesplazamiento: IntNative, public let esAgua: Bool) {}
}

 public class Llanura <: TipoTerrenos {
    init() {
        super("LLANURA", 0, false)
    }
}

public class Colina <: TipoTerrenos {
    init() {
        super("MONTE", 1, false)
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
    public init() {
        super("MAR", 5, true)
    }
}

public class Desierto <: TipoTerrenos {
    init() {
        super("DESIERTO", 2, false)
    }
}

public class PasoDeMontanya <: TipoTerrenos {
    init() {
        super("PASO DE MONTAÑA", 2, false)
    }
}