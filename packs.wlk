// completar
// Paquetes
class Pack {
    const property duracion 
    const property precioBase
    const property beneficios
    var property coordinador

    method esPaquete(unTipo) = self == unTipo

    method beneficiosVigentes() = beneficios.filter({beneficio => beneficio.estaVigente()})

    method costoFinal() = precioBase + self.beneficiosVigentes().sum({beneficio => beneficio.costo()})

    method esPremium()
}

class PackNacional inherits Pack {
    var property provincia
    const actividades

    method actividades() = actividades
    override method esPremium() = duracion > 10 and coordinador.esAltamenteCalificado()
}

class PackInternacional inherits Pack {
    var property destino
    var cantEscalas
    var esDeInteres

    method cantEscalas() = cantEscalas
    method esDeInteres() = esDeInteres

    method aumentarEscalas(unNumero) {cantEscalas += unNumero}

    method decrementarEscalas(unNumero) {cantEscalas -= unNumero}

    method siEsDeInteres() {esDeInteres = true}

    method noEsDeInteres() {esDeInteres = false}
    
    override method costoFinal() = super() * 1.2
    override method esPremium() = esDeInteres and duracion > 20 and cantEscalas == 0
}

class PackProvincial inherits PackNacional {
    const property ciudadesAVisitar
}
// Coordinadores
// Los roles validos: "Guia", "AsistenteLog" "Acompañante"
class Coordinador {
    const cantidadDeViajes
    var property estaMotivado
    const property aniosDeExperiencia
    var rolActual
    const property rolesValidos = #{guia, asistenteLogistico, acompañante}

    method cantidadDeViajes() = cantidadDeViajes
    method rolActual() = rolActual

    method cambiarRol(unRol) {    
        if (!rolesValidos.contains(unRol)) {
            self.error("Rol invalido")
        }
        else {
            rolActual = unRol
        }
    }
    
    method esAltamenteCalificado() = cantidadDeViajes > 20 and rolActual.condicionAdicional(self)
}

object guia {
    method condicionAdicional(coordinador) = coordinador.estaMotivado()
}

object asistenteLogistico {
    method condicionAdicional(coordinador) = coordinador.aniosDeExperiencia() >= 3
}

object acompañante {
    method condicionAdicional(coordinador) = true
}

// Beneficios especiales
class Beneficio {
    const tipo
    const property costo
    var property estaVigente

    method tipo() = tipo
}
