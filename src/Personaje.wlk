import Recuerdo.*

class Personaje{
	var energia
	
	/*constructor(energiaInicial){
		if(energiaInicial < 100 && energiaInicial > 0){
			energia = energiaInicial
		}
		else
		{
			throw new Exception(message = "")
		}
	}*/
	
	//PUNTO A.2
	method nivelRebeldia(){
		return 1/self.nivelFelicidad()
	}
	
	//PUNTO A.3
	method nivelFelicidad() = return 1
	
	//PUNTO B.3
	method conocerEscenario(unEscenario){
		energia -= unEscenario.nivelFama()
		unEscenario.verificarSiEsLujoso()
	}
	
	method esRebelde(){
		return self.nivelRebeldia() > 10
	}
	
	method interactuarConCadaUno(unosPersonajes){
		unosPersonajes.forEach( {personaje => self.iniciarInteraccion(personaje)} )
	}
	
	method iniciarInteraccion(unPersonaje){
		const laMitad = energia /2
		energia -= laMitad
	}
}

class Anfitrion inherits Personaje{
	var velocidadProcesamiento
	var recuerdos
	
	override method nivelFelicidad(){
		return energia / velocidadProcesamiento
	}
	
	override method conocerEscenario(unEscenario){
		super(unEscenario)
		recuerdos.add(new Recuerdo(descripcion = "Conocio el escenario " + unEscenario, escenario = unEscenario))
	}
	
	override method iniciarInteraccion(unPersonaje){
		super(unPersonaje)
		const laMitad = velocidadProcesamiento / 2
		velocidadProcesamiento -= laMitad
	}
}

class Huesped inherits Personaje{
	var minutosRestantes
	var mejoresAmigos
	
	override method nivelFelicidad(){
		return minutosRestantes * self.sumatoriaFelicidadAmigos()
	}
	
	method sumatoriaFelicidadAmigos(){
		return mejoresAmigos.sum( {amigo => amigo.nivelFelicidad()} )
	}
	
	override method conocerEscenario(unEscenario){
		super(unEscenario)	
		minutosRestantes -= 10
	}
	
	override method iniciarInteraccion(unPersonaje){
		super(unPersonaje)
		mejoresAmigos.add(unPersonaje)
	}
}
