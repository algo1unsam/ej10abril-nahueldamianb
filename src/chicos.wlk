import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = [ ]
	var caramelos = 0
	
	method hacerEnojar() {
		nivelIra += 1
	}
	
	method agregarDisfraz(nuevoDisfraz) {
		disfraces.add(nuevoDisfraz)
	}
	
	method sacarDisfraz(disfraz) {
		disfraces.remove(disfraz)
	}

	method capacidadSusto() {
		return nivelIra + disfraces.sum({ disfraz => disfraz.nivelSusto()})
	}
	
	method caramelosAEntregar(cantidad){
		caramelos += cantidad-(cantidad/4)
	}
	
	method caramelos() {
		return caramelos
	}


}

object pancracio {
	var cantidadU = 4
	var disfraces = [ mascaraDracula ]
	var caramelos = 0
	

	method agregarDisfraz(nuevoDisfraz) {
		disfraces.removeAll(disfraces)
		disfraces.add(nuevoDisfraz)
	}
	
	method sacarDisfraz(disfraz) {
		cantidadU+=2
	}
	
	method capacidadSusto() {
		return cantidadU + disfraces.sum({ disfraz => disfraz.nivelSusto()})
	}
	
	method caramelosAEntregar(cantidad){
		caramelos += cantidad
	}
	
	method caramelos() {
		return caramelos
	}
}

// El chico inventado .

object pedro {
	var disfraces = [ mascaraDracula ]
	var caramelos = 0
	

	method agregarDisfraz(nuevoDisfraz) {
		disfraces.add(nuevoDisfraz)
	}
	
	method sacarDisfraz(disfraz) {
		disfraces.remove(disfraz)
	}
	
	method capacidadSusto() {
		return disfraces.sum({ disfraz => disfraz.nivelSusto()})
	}
	
	method caramelosAEntregar(cantidad){
		caramelos += cantidad
	}
	
	method caramelos() {
		return caramelos
	}
}

