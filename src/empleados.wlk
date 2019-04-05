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
	method totalDeuda(){
		return deuda
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
	method pagarDeuda(){
		if (deuda<dinero){
		deuda=deuda-dinero
		deuda=deuda*-1
		dinero=deuda
		deuda=0
		}
		else {
			deuda=deuda-dinero
			dinero=0
		}
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
	method reiniciarConteoEmpanadas(){
		cantidadEmpanadasVendidas = 0
	}
 	method cobrarSueldo(){
 		var auxsueldo=0
 		ahorro=ahorro+self.sueldo()
 		self.totalCobrado(self.sueldo())
 		auxsueldo=self.sueldo()
 		self.reiniciarConteoEmpanadas()
 		return auxsueldo
 	}
	method sueldo() {
	 return cantidadEmpanadasVendidas * montoPorEmpanada
	 }
	 method totalCobrado(sueldo){
	 	return ahorro
	 }
}


object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
  	dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
  }
}
