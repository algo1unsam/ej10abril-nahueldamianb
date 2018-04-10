import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]
	var caramelos = 0
	
	method agregarIntegrantes(nuevosIntegrantes) {
		integrantes.addAll(nuevosIntegrantes)
	}
	
	method capacidadSusto() {
		return integrantes.sum({ integrante => integrante.capacidadSusto()})
	}
	
	method caramelosAEntregar(cantidad){
		integrantes.max({ integrante => integrante.capacidadSusto() }).caramelosAEntregar(cantidad)
	}
	
	method caramelos() {
		return caramelos
	}

}

