import wollok.game.*
import hector.*
import cultivos.*
import direcciones.*
import juegogranja.*

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
	
	method moverEnDireccion(direccion){
		self.position(direccion.siguientePosicion(self.position()))
	}
	method moveteAlAzar(){
		var dado=1.randomUpTo(5).truncate(0)
		if(dado==1){self.moverEnDireccion(ALaIzquierda}
	}
	
	
	
	/*/	var dado=(1..1).map({n=>0.randomUpTo(4).truncate(0)})
  
   if (dado==0 and oso.position().y()<game.height()-1){
   	oso.position(oso.position().up(1)}
   else if (dado==1 and oso.position().y()>0){
   	oso.position(oso.position().down(1)}
   	
   else if (dado==2 and oso.position().x()>0){
   	oso.position(oso.position().left(1))   }
   	else if (dado==3)and oso.position().x()<game.width()-1){
   		oso.position(oso.position().right(1))
	}*/
}
