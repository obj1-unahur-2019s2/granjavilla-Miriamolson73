import wollok.game.*
import cultivos.*
import juegogranja.*
import direcciones.*
import oso.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	var property plantasCosechadas=[]
	var property ganancias
	
	method plantarMaiz(){
		game.addVisual(new Maiz(position=self.position()))
	}
	method plantarTomate(){
		game.addVisual(new Tomaco(position=self.position()))
	}
	method plantarTrigo(){
		game.addVisual(new Trigo(position=self.position()))
	}
	
	
	method regarPlanta(){
		if (game.colliders(self).isEmpty()){game.say(self,"no tengo nada para cosechar")}
		else {
		game.colliders(self).forEach({planta=>planta.regate()})}
		// devuelve una lista o una colleccion, la misma puede estar vacia 
	}
	method cosecharPlanta(){
		game.colliders(self).forEach({planta=>game.removeVisual(planta)
			plantasCosechadas.add(planta)})
					}
	method cantidadDePlantasCosechadas(){
		return plantasCosechadas.size()
	}	
	method venderCultivo(){
		ganancias=plantasCosechadas.size()
		plantasCosechadas.forEach({planta=>game.removeVisual(planta)})
	
	}
	method moverEnDireccion(direccion){
		self.position(direccion.siguientePosicion(self.position()))
	}
	method teChocoElOso(){}
	method estanEnLaMismaPosicion(){
		return game.colliders(self).map({planta=>planta.nombre()})
	}
		
	
}