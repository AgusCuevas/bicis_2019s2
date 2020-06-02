import bicis.*
import accesorios.*

class Deposito {
	const bicisGuardadas = []
	
	method agregarBici(bici) {
		bicisGuardadas.add(bici)
	}
	
	method descargarBici(bici){
		bicisGuardadas.remove(bici)
	}
	
	method bicisRapidas(){
		return bicisGuardadas.filter({ g => 
							g.velocidadCrucero() > 25})
	}
	
	method marcasDeBicis(){
		return bicisGuardadas.map({ g => g.marca()}).asSet()
	}
	
	method depositoNocturno(){
		return bicisGuardadas.all({g => g.accesorios().esLuminoso()})
		// No lo pude sacar a este
	}
	
	method  puedeLlevar(kg){
		return bicisGuardadas.any({g => g.carga() > kg})
	}
	
	method marcaMasRapida(){
		 return bicisGuardadas.max({ g => g.velocidadCrucero()}).marca()
	}
	
	method cargaBicisLargas(){
		return bicisGuardadas.filter({ g => g.largo() > 170}).sum({ g => g.carga()})
	}
	
	method bicisSinAccesorios(){
		return bicisGuardadas.filter({ g => g.accesorios() == []}).size()
	}
	
	method bicisCompanieras(bici){
		return bicisGuardadas.filter({ g => g.marca() == bici.marca()}).
		filter({ g => g.largo().between(bici.largo()-10, bici.largo()+10)})
	}

}
