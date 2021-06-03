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
	var property interior = comodo
	var property motor = bataton
	
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

// OBJETOS EXTRA PARA LA TRAFIC
object comodo {
	method capacidad() = 5
	method peso() = 700	
}
object popular {
	method capacidad() = 12
	method peso() = 1000
}

object pulenta {
	method velocidadMaxima() = 130
	method peso() = 800
}
object bataton {
	method velocidadMaxima() = 80
	method peso() = 500
}