object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitud = 1
	
	method variarLongitud(nuevaLongitud) {
		longitud = nuevaLongitud
	}
	
	method nivelSusto() {
		return 5*longitud
	}
}

object mascaraDracula {
	var tamanio = 2
	
	method nivelSusto() {
		return 3*tamanio
	}

}

object mascaraFrankenstein {
	method nivelSusto() {
		return 22
	}
}

object mascaraPolitico {
	var cantidadPromesas = 1
	
	method agregarPromesa() {
		cantidadPromesas += 1
	}
	
	method nivelSusto() {
		return cantidadPromesas
	}
}

