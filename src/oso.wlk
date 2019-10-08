import wollok.game.*
import hector.*
import cultivos.*
import direcciones.*

object oso {
	var property position = new Position(x = 0, y = 0)
	const property image = "oso.png"
	//const property image = "player.png"
	var property plantasCosechadas=[]
	method plantarMaiz(){
		game.addVisual(new Maiz(position=self.position()))
	}
	method regarPlanta(){
		game.colliders(self).forEach({planta=>planta.regate()})
		// devuelve una lista o una colleccion, la misma puede estar vacia 
	}
	method cosecharPlanta(){
		game.colliders(self).forEach({planta=>game.removeVisual(planta)
			plantasCosechadas.add(planta)})
					}
	method cantidadDePlantasCosechadas(){
		return plantasCosechadas.size()
	}	
	method moveteALaIzquierda(){}
	method moverEnDireccion(direccion){
		self.position(direccion.siguientePosicion(self.position()))
	}
}
