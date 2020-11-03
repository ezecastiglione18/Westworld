class Trama {
	var property personajesParticipantes
	var property escenario
	
	//PUNTO C.1
	method complejidad(){
		return escenario.nivelFama() / self.felicidadDelMasFeliz()
	}
	
	method felicidadDelMasFeliz(){
		return personajesParticipantes.max( {personaje => personaje.nivelFelicidad()} )
	}
	
	//PUNTO C.2
	method esPicante(){
		return personajesParticipantes.all( {personaje => personaje.esRebelde()} )
	}
	
	//PUNTO C.3
	method renovar(){
		escenario.evolucionar()
		self.matarPersonajesRebeldes()
	}
	
	method matarPersonajesRebeldes(){
		personajesParticipantes.removeAllSuchThat( {personaje => personaje.esRebelde()} )
	}
	
	//PUNTO C.4
	method cruzarseCon(otraTrama){
		const escenarioOtraTrama = otraTrama.escenario()
		const personajesOtraTrama = otraTrama.personajesParticipantes()
		
		self.personajesConocenOtroEscenario(escenarioOtraTrama)
		self.personajesInteractuanCon(personajesOtraTrama)
		
		/*otraTrama.personajesConocenOtroEscenario(escenario)
		otraTrama.personajesInteractuanCon(personajesParticipantes)*/
	}
	
	method personajesConocenOtroEscenario(unEscenario){
		personajesParticipantes.forEach( {personaje => personaje.conocerEscenario(unEscenario)} )
	}
	
	method personajesInteractuanCon(unosPersonajes){
		personajesParticipantes.forEach( {personaje => personaje.interactuarConCadaUno(unosPersonajes)} )
	}
	
}
