object pepita {
	var energia = 100
	
	method cambiarEnergia(nuevaEnergia) {
		energia = nuevaEnergia
	}	

	method estaFeliz(){
		return energia >= 500 and energia <= 1000
	}
	
	method cuantoQuiereVolar(){
		return energia / 5 + energiaEspecial.energiaNueva(energia) 
	}
	
	
	method salirAComer(){
		 self.volarADeposito()
		 self.come(alpiste)
		 self.vola(5)
		 }
	
	method volarADeposito(){
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		if (self.estaCansada()) self.come(alpiste)
		if (self.estaFeliz()) self.vola(8)
	}
	
	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
}

object energiaEspecial{
	method energiaNueva(num){
		return  numero.entre(num, 300, 400) + numero.modulo(num, 20)
	}
}

object numero{
	method entre(num, num1, num2){
		return if (num1<=num and num<=num2) 10 else 0 
	}
	method modulo(num, num1){
		return if (num%num1 == 0) 15 else 0	
	}
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo{
	var joules
	
	method mojarse(){
		joules = 15
	}
	method secarse(){
		joules = 20
	}
	method energiaQueOtorga(){
		return joules
	}
}

object canelones{
	var joules = 20
	
	method energiaQueOtorga(){
		return joules
	}
	method ponerSalsa(){
		joules += 5
	}
	method ponerQueso(){
		joules += 7
	}
	method sacarQueso(){
		joules -= 7
	}
	method sacarSalsa(){
		joules -= 5
	}	
}

// parte 3 

object roque{
	var cliente
	
	method entrenar(){
		cliente.vola(10)
		cliente.come(alpiste)
		cliente.vola(5)
		cliente.haceLoQueQuieras()
	}
	method clienteEs(nuevoCliente){
		cliente = nuevoCliente
	}
	
}