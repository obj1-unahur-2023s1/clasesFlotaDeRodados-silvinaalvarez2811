import rodados.*
import pedidoTranslado.*


 class Dependencia {
	const flota =[]
	const pedidos =[]
	var property  cantEmpleados
	
	
	method agregarPedido(unPedido){pedidos.add(unPedido)}
	method quitarPedido(unPedido){pedidos.remove(unPedido)}
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
	
		///etapa 3 - registro de pedido de cada dependencia//
	method totalPasajerosConPedidos(){
		return pedidos.sum({pedido =>pedido.cantPasajeros()})
	}
	method colorIncompatible(unColor){
		return pedidos.all({pedido => pedido.coloresIncompatibles().contains(unColor)})
	}
	method relajarTodosLosPedidos(){
		pedidos.forEach({pedido =>pedido.relajar()})
	}
	method pedidosNoSatisfechos(){
		return pedidos.filter({pedido => not self.puedeSatisfacerUnPedido(pedido)})
	}
	method puedeSatisfacerUnPedido(pedido){
		return flota.any({auto =>pedido.esSatisfactorio(auto)})
	}
	
	
}