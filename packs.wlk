// completar
// Paquetes
class Pack {
    const duracion 
    const precioBase
    const beneficios
    const coordinador

    method duracion() = duracion

    method precioBase() = precioBase

    method beneficios() = beneficios

    method coordinador() = coordinador
}

class Nacional inherits Pack {
    const provinciaDestino
    const actvIncluidas

    method provinciaDestino() = provinciaDestino

    method actVIncluidas() = actvIncluidas
}

class Internacional inherits Pack {
    const paisDestino
    const cantEscalas
    const esLugarDeInteres

    method paisDestino() = paisDestino

    method cantEscalas() = cantEscalas

    method esLugarDeInteres() = esLugarDeInteres
}

// Coordinadores
// Los roles validos: "Guia", "AsistenteLog" "Acompañante"
class Coordinador {
    const viajesRealizados
    const estaMotivado
    const aniosDeExperiencia
    var rolActual

    method viajesRealizados() = viajesRealizados
    method estaMotivado() = estaMotivado
    method aniosDeExperiencia() = aniosDeExperiencia
    method rolActual() = rolActual

    method cambiarDeRol(unRol) {
        const rolesValidos = #{"Guia", "AsitenteLogicistico", "Acomáñante"}
        if (!rolesValidos.contains(unRol)) {
            self.error("La clase dada no es valida")
        }
        else {
            rolActual = unRol
        }
    }
}


class Beneficio {
    const tipo
    const costo
    const estaVigente

    method tipo() = tipo
    method costo() = costo
    method estaVigente() = estaVigente
}