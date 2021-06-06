import rodados.*
import dependencias.*

class Pedido {
	var property distanciaARecorrer
	var property tiempoMaximoDeViaje
	var property cantidadPasajeros 	
	const coloresIncompatibles = []
	
	method velocidadRequerida() = distanciaARecorrer / tiempoMaximoDeViaje
	method pedidoSatisfactorio(auto) = return auto.velocidadMaxima() >= 10 and auto.capacidad() == cantidadPasajeros and auto.color() != coloresIncompatibles
	method acelerar() { tiempoMaximoDeViaje - 1 }
	method relajar() { tiempoMaximoDeViaje + 1 }
}
