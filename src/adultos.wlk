import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 21

	method tolerancia(){
		return tolerancia
	}
	
	method caramelosAEntregar(chico) {
		var diferencia = 0
		diferencia = chico.capacidadSusto() - tolerancia
		if (diferencia < 0)
			return 0
		else
			return diferencia
	}
	
	method serAsustadoPor(chico){
		if(self.caramelosAEntregar(chico) > 0)
			chico.caramelosAEntregar(self.caramelosAEntregar(chico))
			
		tolerancia -= 1
	}
}
