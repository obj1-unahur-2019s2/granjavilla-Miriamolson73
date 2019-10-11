import hector.*
import cultivos.*
import wollok.game.*
import oso.*
import direcciones.*

object juegoGranja{
	var personajeActual=hector
	
	method configurarTeclado(){
		keyboard.s().onPressDo({game.say(hector,"hola gente")})
		// Al apretar la M siembra una semilla de maíz en su posición actual.
 	    keyboard.m().onPressDo({hector.plantarMaiz()})
// Al apretar la T siembra una semilla de trigo en su posición actual.
	
 		keyboard.t().onPressDo({hector.plantarTrigo()})
// Al apretar la O siembra una semilla de tomaco en su posición actual.	
		keyboard.o().onPressDo({hector.plantarTomate()})
		
		
		keyboard.r().onPressDo({hector.regarPlanta()})
		keyboard.c().onPressDo({hector.cosecharPlanta()})
		keyboard.p().onPressDo({game.say(hector,"tengo Cosechadas" + hector.cantidadDePlantasCosechadas()+"plantas")})
		//keyboard.q().onPressDo({game.say(hector,"colliders"+hector.estanEnLaMismaPosicion() )})
	
	//EJEMPLO DE ASIGNAR UNA NUEVA POSICION A HECTOR
	//keyboard.o().onPressDo({hector.position(new Position(x=0,y=0))})
		self.configurarMovimientos()	
	}
	
	method configurarMovimientos(){
		
		keyboard.up().onPressDo({
			if(personajeActual.position().y()< game.height()-1){
				personajeActual.position(personajeActual.position().up(1))}
				})
	    keyboard.down().onPressDo({
			if(personajeActual.position().y()>0){
				personajeActual.position(personajeActual.position().down(1))}
				})	
		keyboard.left().onPressDo({
			if(personajeActual.position().y()>0){
				personajeActual.position(personajeActual.position().left(1))}
				})		
		keyboard.right().onPressDo({
			if(personajeActual.position().y()<game.width()-1){
				personajeActual.position(personajeActual.position().right(1))}
				})								
	}
	
	//falta abajo izq
	method configurarPersonajes(){
		game.addVisual(hector)
	
	
		game.addVisual(oso)
	}
	// COLISIONES
	method configurarColisiones(){
	 game.whenCollideDo(oso, { objeto => objeto.teChocoElOso() })
	 }
   // VISUALES
   //accciones
   method configurarAcciones(){
    game.onTick(1000,"movimientoOso",{oso.moverEnDireccion(este)})}
   
   
   	}   
   	   
   

