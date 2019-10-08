import wollok.game.*

object este {
	method siguientePosicion(position){
		if(position.x()==game.width()-1){return position }
			else { return position.right(1)	}

}	
}
