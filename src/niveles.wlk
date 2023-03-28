import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {

	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisualCharacter(pepita)
	}

}

object tutorial2 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		//config.configurarGravedad()  //ctrl 1
	}

}

object tutorial3 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
	//	config.configurarGravedad()
	}

}

object config {

	method configurarTeclas() {
		keyboard.left().onPressDo({ pepita.irA(pepita.position().left(1)) })
		keyboard.right().onPressDo({ pepita.irA(pepita.position().right(1))})
	}
	


	method configurarColisiones() {
		game.onCollideDo(pepita, { algo => algo.teEncontro(pepita) })
	}
	

}



//
//		keyboard.up().onPressDo({ pepita.irA(pepita.position().up(1))})
//		keyboard.down().onPressDo({ pepita.irA(pepita.position().down(1))})


//	method configurarGravedad() {
//		game.onTick(800, "GRAVEDAD", { pepita.caerSiEstasVolando() }) 
//	}
