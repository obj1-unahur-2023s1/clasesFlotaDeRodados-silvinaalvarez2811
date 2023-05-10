

 class Dependencia {
	const flota =[]
	var property  cantEmpleados
	
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){flota.remove(rodado)}
	method pesoTotalFlota(){return flota.sum({auto => auto.peso()})}
	method estaBienEquipada(){
		 return flota.size()>= 3 and flota.all({auto => auto.velocidadMax() >= 100})
	}
	method capacidadTotalEnColor(color){
		const unaFlota = flota.filter({auto => auto.color() == color})
		
		return unaFlota.sum({auto =>auto.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		return flota.max({auto => auto.velocidadMax()}).color()
	}
	method capacidadFaltante(){
		return cantEmpleados - flota.sum({auto => auto.capacidad()})
	}
	method esGrande(){
		return cantEmpleados >= 40 and flota.size()>= 5
	}
	
}