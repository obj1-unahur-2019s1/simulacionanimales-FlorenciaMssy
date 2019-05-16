import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"

	var property peso = 200
	var property tieneSed = false
	
method comer(kilos){
	peso = peso + (kilos/2)
	tieneSed = true
}
method beber(){
	peso = peso-1.max(0)
	tieneSed = false	
}

}

class Gallina {
	var property position = game.at(3,6)
	const property image = "gallina.gif"
	
	var property peso = 4
	var property tieneSed = false
	var property vecesQueComio = 0
	
method comer(kilo){
	vecesQueComio = vecesQueComio +1
	if (vecesQueComio == 2 || vecesQueComio == 5)
		{tieneSed = true}
	else {tieneSed = false}
}

}
