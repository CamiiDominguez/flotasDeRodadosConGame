class ChevroletCorsa {
	var property color = "color"
	
	method capacidad() { return 4 }
	method velocidadMaxima() { return 150 }
	method color() { return color }
	method peso() { return 1300 }	
}

class RenaultKwid {
	var property tieneTanque = false
	
	method capacidad() { return if (not tieneTanque) 4 else 3 }
	method velocidadMaxima() { return if (tieneTanque) 120 else 110 }
	method color() { return "Azul" }
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
	
	method capacidad() { return capacidad }
	method velocidadMaxima() { return velocidadMaxima }
	method color() { return color }
	method peso() { return peso }
}

// OBJETOS EXTRA
object interior {	
	var comodo = true
	
	method capacidad() {return if (comodo) comodo.capacidad() else popular.capacidad()  }
	method peso() { return if (comodo) comodo.peso() else popular.peso() }
	method cambiarInterior() {
		comodo = not comodo 
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
	var pulenta = true
	
	method velocidadMaxima() { return if (pulenta) pulenta.velocidadMaxima() else bataton.velocidadMaxima() }
	method peso() { return if (pulenta) pulenta.peso() else bataton.peso() }
	method cambiarMotor() {
		pulenta = not pulenta 
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