class BajoCoste {
	var zona 
	method extraNivelFama(unEscenario){
		return zona.size()
	}	
	
	method evolucionar(){
		return estandar
	}
	
	method sumarVisitas(){
		
	}
}

object estandar {
	method extraNivelFama(unEscenario){
		return 10
	}
	
	method evolucionar(){
		return new DeLujo(cantidadVisitas = 0)
	}
	
	method sumarVisitas(){
		
	}
}

class DeLujo {
	var cantidadVisitas
	
	method extraNivelFama(unEscenario){
		return cantidadVisitas
	}
	
	method sumarVisitas() = cantidadVisitas++
	
	method evolucionar(){
		throw new Exception(message = "Ya es de lujo!")
	}
}
