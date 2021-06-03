class ChevroletCorsa {
	var property color = "color"
	
	method capacidad() = 4 
	method velocidadMaxima() = 150 
	method color() = color 
	method peso() = 1300 	
}

class RenaultKwid {
	var property tieneTanque = false
	
	method capacidad() { return if (not tieneTanque) 4 else 3 }
	method velocidadMaxima() { return if (tieneTanque) 120 else 110 }
	method color() = "Azul" 
	method peso() { return if (not tieneTanque) 1200 else 1200 + 150 }
}

object trafic {
	
	
	method capacidad() { return interior.capacidad() }
	method velocidadMaxima() { return motor.velocidadMaxima() }
	method color() = "Blanco" 
	method peso() = 4000 + interior.peso() + motor.peso() 
} 

class AutosEspeciales {
	var property capacidad
	var property velocidadMaxima
	var property color
	var property peso
	
	method capacidad() = capacidad 
	method velocidadMaxima() = velocidadMaxima 
	method color() = color 
	method peso() = peso 
}

// OBJETOS EXTRA
object interior {	
	var interiorComodo = true
	
	method capacidad() {return if (interiorComodo) comodo.capacidad() else popular.capacidad()  }
	method peso() { return if (interiorComodo) comodo.peso() else popular.peso() }
	method cambiarInterior() {
		interiorComodo = not interiorComodo 
	}
}
object comodo {
	method capacidad() = 5
	method peso() = 700	
}
object popular {
	method capacidad() = 12
	method peso() = 1000
}
object motor {
	var motorPulenta = true
	
	method velocidadMaxima() { return if (motorPulenta) pulenta.velocidadMaxima() else bataton.velocidadMaxima() }
	method peso() { return if (motorPulenta) pulenta.peso() else bataton.peso() }
	method cambiarMotor() {
		motorPulenta = not motorPulenta 
	}
}
object pulenta {
	method velocidadMaxima() = 130
	method peso() = 800
}
object bataton {
	method velocidadMaxima() = 80
	method peso() = 500
}