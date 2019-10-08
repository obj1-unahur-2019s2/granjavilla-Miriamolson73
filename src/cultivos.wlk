import wollok.game.*
import hector.*
import oso.*

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
	}
	method teChocoElOso() {
		self.regate()
	}
}

class Trigo {
	var property position

	method image() { return "wheat_0.png" }
	method regate() { /* a completar */ }
	method teChocoElOso() {
		if (position.x() > 0) {
			position = position.left(1)
		}
	}
}