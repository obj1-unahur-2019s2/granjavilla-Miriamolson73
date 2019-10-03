import wollok.game.*
import hector.*

class Maiz {
	var property position=new Position(x = 0,y = 0)
	var property esAdulta
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		if(esAdulta){return "corn_adult.png"}
		else {return "corn_baby.png"}
	}
	method regate(){
		if(not esAdulta){esAdulta=true}
		
	}
}