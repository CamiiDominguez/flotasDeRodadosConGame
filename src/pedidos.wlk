import rodados.*
import dependencias.*

class Pedido {
	var property distanciaARecorrer
	var property tiempoMaximoDeViaje
	var property cantidadPasajeros 	
	const property coloresIncompatibles = []
	
	method velocidadRequerida() = distanciaARecorrer / tiempoMaximoDeViaje
	method pedidoSatisfactorio(auto) = auto.velocidadMaxima() - self.velocidadRequerida() >= 10 and auto.capacidad() == cantidadPasajeros and auto.color() != coloresIncompatibles
	method acelerar() { tiempoMaximoDeViaje - 1 }
	method relajar() { tiempoMaximoDeViaje + 1 }
	method agregarColorIncompatible(color) = coloresIncompatibles.add(color)
}
