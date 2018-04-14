import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]
	
	method agregarIntegrantes(nuevosIntegrantes) {
		integrantes.addAll(nuevosIntegrantes)
	}
	
	method capacidadSusto() {
		return integrantes.sum({ integrante => integrante.capacidadSusto()})
	}
	
	method caramelosAEntregar(cantidad){
		integrantes.max({ integrante => integrante.capacidadSusto() }).caramelosAEntregar(cantidad)
	}

	method lider(){
		return integrantes.max({ integrante => integrante.capacidadSusto() })
	}

	method caramelos() {
		return integrantes.sum({ integrante => integrante.caramelos()})
	}

}

object barrio {
	var property integrantes = []
	
	method agregarIntegrantes(nuevosIntegrantes) {
		integrantes.addAll(nuevosIntegrantes)
	}
	
	method capacidadSusto() {
		return integrantes.sum({ integrante => integrante.capacidadSusto()})
	}
	
	method caramelosAEntregar(cantidad){
		integrantes.max({ integrante => integrante.capacidadSusto() }).caramelosAEntregar(cantidad)
	}

	method lider(){
		return integrantes.max({ integrante => integrante.capacidadSusto() })
	}

	method caramelos() {
		return integrantes.sum({ integrante => integrante.caramelos()})
	}
	
	method sustosMayor42 () {
		return integrantes.filter({ integrante => integrante.capacidadSusto() >= 42 })
	}

     method chicosConMasCaramelos(cantidad)
     {
     	return integrantes.sortedBy({a, b => a.caramelos() > b.caramelos()})
     				.subList(0, 1)
     				.asSet()
     				.asList()
     }
}
