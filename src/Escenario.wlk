class Escenario {
	 var nombre
	 var categoria
	 
	 method nivelFama(){
	 	return 100 + categoria.extraNivelFama(self)
	 }
	 
	 method verificarSiEsLujoso(){
	 	if(categoria.esDeLujo()){
	 		categoria.sumarVisitas()
	 	}
	 }	
	 
	 //PUNTO B.4
	 method evolucionar(){
	 	categoria = categoria.evolucionar()
	 }
}
