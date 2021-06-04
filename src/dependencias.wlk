import rodados.*

class Dependencia {
	const flota = []
	var cantidadEmpleados = 0
	
	method agregarAFlota(rodado) { flota.add(rodado) }  
	method quitarDeFlota(rodado) { flota.remove(rodado) }
	method pesoTotalFlota() = flota.map({f => f.peso()}).sum() 
	method estaBienEquipada() = self.tamanioDeFlota() >= 3 and flota.find({f => f.velocidadMaxima() >= 100 }) 
	method capacidadTotalEnColor(color) = flota.filter({f => f.color() == color}).map({f => f.capacidad()}).sum() 
	method colorDelRodadoMasRapido() = flota.max({f => f.velocidadMaxima()}).color()
	method capacidadFaltante() = cantidadEmpleados - flota.map({f => f.capacidad()}).sum() 
	method esGrande() = cantidadEmpleados >= 40 and self.tamanioDeFlota() >= 5	
	method informarEmpleados(cantidad) { cantidadEmpleados = cantidad }
	method tamanioDeFlota() = flota.size()
}
