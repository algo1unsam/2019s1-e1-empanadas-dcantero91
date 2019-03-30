object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinero=0
	var deuda=0
	
	method totalDinero(){
		return dinero
	}
	method dinero(_dinero){
		dinero=_dinero
	}
	method deuda(){
		return deuda
	}
	method deuda(_deuda){
		deuda=_deuda
	}
	
	method gastar(gasto){
		deuda=deuda+gasto
	}
	method cobrarSueldo(){
		dinero=dinero+self.sueldo()
		return self.sueldo()
	}
	method sueldo() { 
		return sueldo
	}
	method pagar(){
		var auxdeuda=0
		auxdeuda=deuda
		deuda=deuda-dinero
		dinero=dinero-auxdeuda
	}
	method sueldo(nuevoValor) { sueldo = nuevoValor }
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var ahorro=0
	
	method ahorro(_ahorro){
		ahorro=_ahorro
	}
	method ahorro(){
		return ahorro
	}
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	method cobrarSueldo(){
 		self.totalCobrado(self.sueldo())
 		return self.sueldo()
 	}
	method sueldo() {	
	 return cantidadEmpanadasVendidas * montoPorEmpanada
	 }
	 method totalCobrado(sueldo){
	 	ahorro=ahorro+sueldo
	 }
}


object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.cobrarSueldo() }
}
