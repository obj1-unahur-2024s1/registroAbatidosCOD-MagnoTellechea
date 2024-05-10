import dias.*
object registroAbatidosCOD {
	const  dias = [dia1,dia2,dia3]
	const verificarSiSonPares ={abatidos => abatidos.cantidadDeAbatidos() % 2 == 0}
	const verificarSiAbatieronMasQueElPrimerDia = {abatidos => abatidos.cantidadDeAbatidos() > self.primerValorDeAbatidos()}
	const verificarSiAbatieronMasQueElDiaAnterior = {abatidos => abatidos.cantidadDeAbatidos() <= self.elementoDeListaEnIndice(dias.size()-1).cantidadDeAbatidos()}
	
	method cantidadDeDiasRegistrados() = dias.size()
	method estaVacioElRegistro() = dias.isEmpty()
	method algunDiaAbatio(cantidad) = dias.all({abatidos => abatidos.cantidadDeAbatidos() == cantidad})
	method primerValorDeAbatidos() = dias.first().cantidadDeAbatidos()
	method ultimoValorDeAbatidos() = dias.last().cantidadDeAbatidos()
	method maximoValorDeAbatidos() = dias.max({abatidos => abatidos.cantidadDeAbatidos()})
	method totalAbatidos() = dias.sum({abatidos => abatidos.cantidadDeAbatidos()})
	method ultimoValorDeAbatidosConSize() = dias.get(dias.size()-1).cantidadDeAbatidos()
	method diasConAbatidosSuperioresA(cuanto) = dias.filter({abatidos => abatidos.cantidadDeAbatidos() > cuanto})
	method valoresDeAbatidosPares() = dias.filter(verificarSiSonPares).map({pares => pares.cantidadDeAbatidos()})
	method cantidadDeAbatidosElDia(fecha) = dias.find{abatidos => abatidos.fecha() == fecha}.cantidadDeAbatidos()
	method abatidosSumando(cantidad) = dias.map({abatidos => abatidos.cantidadDeAbatidos() + cantidad})
	method abatidosEsAcotada(n1,n2) = dias.all({abatidos => abatidos.cantidadDeAbatidos().between(n1,n2)})
	method algunDiaAbatioMasDe(cantidad) = dias.any({abatidos => abatidos.cantidadDeAbatidos() > cantidad})
	method todosLosDiasAbatioMasDe(cantidad) = dias.all({abatidos => abatidos.cantidadDeAbatidos() > cantidad})
	method cantidadAbatidosMayorALaPrimera() = dias.filter(verificarSiAbatieronMasQueElPrimerDia).size()
	
	method elementoDeListaEnIndice(indice) = dias.get(indice)
	method esCrack() = dias.all(verificarSiAbatieronMasQueElDiaAnterior)
	// debería indicar verdadero si todos los días de los que se tiene registro, el valor de abatidos fue aumentando.
	
}


