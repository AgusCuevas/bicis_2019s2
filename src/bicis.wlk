import accesorios.*

class Bicicletas{
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	
	method agregar(accesorio) {
		accesorios.add(accesorio)
	}
	
	method descargar(accesorio){
		accesorios.remove(accesorio)
	}
	
	method altura(){
		return (rodado * 2.5) + 15
	}
	
	method velocidadCrucero(){
		if (largo > 120){
			return rodado + 6
		}
		else { return rodado + 2 }
	}
	
	method carga(){
		return accesorios.sum({g => g.carga()})
	}
	
	method peso(){
		var pesoAccesorios  = accesorios.sum({g => g.peso()})
		return rodado/2 + pesoAccesorios
	}
	
	method tieneLuz(){
		return accesorios.any({g => g.esLuminoso()})
	}
	
	method cantidadAccesoriosLivianos(){
		return accesorios.count({ g => g.peso() < 1})
	}
}