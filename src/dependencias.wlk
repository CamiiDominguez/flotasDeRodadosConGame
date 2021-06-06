import rodados.*
import pedidos.*

class Dependencia {
	const flota = []
	const pedidos = []
	var cantidadEmpleados = 0
	
	method agregarAFlota(rodado) { flota.add(rodado) }  
	method quitarDeFlota(rodado) { flota.remove(rodado) }
	method pesoTotalFlota() = flota.map({f => f.peso()}).sum() 
	method estaBienEquipada() = self.tamanioDeFlota() >= 3 and flota.all({f => f.velocidadMaxima() >= 100 })   
	method capacidadTotalEnColor(color) = flota.filter({f => f.color() == color}).map({f => f.capacidad()}).sum()
	method colorDelRodadoMasRapido() = flota.max({f => f.velocidadMaxima()}).color()
	method capacidadFaltante() = cantidadEmpleados - flota.map({f => f.capacidad()}).sum() 
	method esGrande() = cantidadEmpleados >= 40 and self.tamanioDeFlota() >= 5	
	method informarEmpleados(cantidad) { cantidadEmpleados = cantidad }
	method tamanioDeFlota() = flota.size()
	method agregarAPedidos(pedido) { pedidos.add(pedido) }  
	method quitarDePedidos(pedido) { pedidos.remove(pedido) }
	method totalPasajeros() = pedidos.sum({p => p.cantidadPasajeros()})
	method flotaSatisfacePedido(pedido) = flota.all({f => pedido.pedidoSatisfactorio(f)})
	method pedidosNoSatisfechos() = pedidos.filter({p => not self.flotaSatisfacePedido(p)})
	method colorIncompatible(color) = pedidos.any({p => p.coloresIncompatibles() == color})
	method relajarTodosLosPedidos() { pedidos.forEach({p => p.relajar()}) }
}
