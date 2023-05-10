import dependencia.*
import rodados.*

class Pedido {
	var property distancia
	var property tiempoMax
	var property cantPasajeros
	const coloresIncomp = #{}
		
	method velocidadRequerida(){
		return distancia / tiempoMax
	}
	method esSatisfactorio(unAuto){
		return
			unAuto.velocidadMax()- self.velocidadRequerida() >= 10
		and unAuto.capacidad() >= cantPasajeros
		and not coloresIncomp.contains(unAuto.color())
	}
	method ingresarColor(colorIncompatible){
		coloresIncomp.add(colorIncompatible)
	}
	method acelerar(){ tiempoMax -= 1}
	method relajar(){tiempoMax +=1}
}
