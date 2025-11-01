// completar
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