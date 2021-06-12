import wollok.game.*
import colores.*

class ChevroletCorsa {
	var property color = "color"
	var property position = game.at(0,0)
	var property posicionesGuardadas = [position]
	var property image
	
	method capacidad() = 4 
	method velocidadMaxima() = 150 
	method color() = color 
	method peso() = 1300 
	method guardarPosicion() { posicionesGuardadas.add(self.position()) }	
	method pasoPor(posicion) = posicionesGuardadas.contains({posicion}) 
	method filasPasadas() = posicionesGuardadas.map({p => p.x()})
	method pasoPorFila(numero) = self.filasPasadas().any({numero}) //Esto probablemente no funcione, pero no se me ocurrio otra forma de hacerlo
	method recorrioFilas(lista_de_numeros) = lista_de_numeros.all({l => self.pasoPorFila(l)})
	method pintarRojo() { image = rojo.image() }
	method pintarAzul() { image = azul.image() }
	method pintarVerde() { image = verde.image() }	 	
	method moverIzquierda() { 
		self.position(self.position().left(1)) 
		self.guardarPosicion()
	}
	method moverDerecha() { 
		self.position(self.position().right(1)) 
		self.guardarPosicion()
	}
	method moverArriba() { 
		self.position(self.position().up(1)) 
		self.guardarPosicion()
	}
	method moverAbajo() { 
		self.position(self.position().down(1)) 
		self.guardarPosicion()
	}
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