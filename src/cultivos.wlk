import wollok.game.*
import hector.*
import oso.*
import direcciones.*
import juegogranja.*

/*class Maiz {
	var property position=new Position(x = 0,y = 0)
	var property esAdulta
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		if(esAdulta){return "corn_adult.png"}
		else {return "corn_baby.png"}
	}
	method regate(){
		if(not esAdulta){esAdulta=true}
		
	}*/
	class Maiz {
	var property position
	var property esAdulta = false 
   
    
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		//return "corn_baby.png"
		if (esAdulta) {
			return "corn_adult.png"
		} else {
			return "corn_baby.png"
		}
	}

	method regate() {
		if (not esAdulta) { esAdulta = true }
		else {esAdulta}
	}
	method teChocoElOso() {
		self.regate()
	}
}

class Trigo {
	var property position
	var property evolucion=0
	

	method image() { 
		if (evolucion==0) {	return "wheat_0.png"}
		else if (evolucion==1){return "wheat_1.png"	}
		else if (evolucion==2){return "wheat_2.png"}
	    else { return "wheat_3.png"}
	}
	
	method regate() {if (evolucion<3){ evolucion+=1}
					 else {evolucion=0}	
	}		
	
	
	
	method teChocoElOso() {
		if (position.x() > 0) {
			position = position.left(1)
		}
	}
}
class Tomaco{
	var property position
	
	

	method image() { 
		return "tomaco.png"	}
		
		
	method regate() { self.moverEnDireccion(sur)}
						
	method teChocoElOso (){	}
	
	method moverEnDireccion(direccion){
		self.position(direccion.siguientePosicion(self.position()))
	}
}	
