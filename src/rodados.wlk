
class Corsa {
	var property color
	
	method capacidad(){return 4}
	method velocidadMax(){ return 150}
	method peso(){return 1300}
	
}
class Kwid {
	var property tieneTanque 
	const pesoTanque = 150
	
	method capacidad(){
		if( tieneTanque){ 
			return 3
		}else{
			return 4
		}
	}
	method velocidadMax(){	
		if( tieneTanque){ 
			return 120
		}else{
			return 110
		}
	}
	method color(){return "azul"}
	method peso(){	
		if( tieneTanque){ 
			return 1200 + pesoTanque 
		}else{
			return 1200 
		}
	}
}
object trafic{
	var motor
	var interior
	const pesoBase = 4000
	
	method capacidad(){return interior.capacidad()}	
	method color(){return "blanco"}
	method velocidadMax(){return motor.velocidadMax()}
	method peso(){return  pesoBase + motor.peso() + interior.peso()}
	method tipoDeMotor(unMotor){motor = unMotor}
	method tipoDeInterior(unInterior){interior = unInterior}
}
	
object  motorPulenta{
	method peso(){return 800}
	method velocidadMax(){return 130}
}
object  motorBataton{
	method peso(){return 500}
	method velocidadMax(){return 80}
}

object interiorComodo{
	method peso(){return 700}
	method capacidad(){return 5}
}
object interiorPopular{
	method peso(){return 1000}
	method capacidad(){return 12}
}

class AutosEspeciales {
	var property capacidad
	var property peso
	var property color
	var property velocidadMax
		
}





