import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"

	var property tieneSed = false
	var property peso = 100
	
method comer(kilos){
	if (self.hambre()){
	peso = peso + (kilos/2)
	tieneSed = true}
	else {self.error("No tengo hambreee!!")}
}
method beber(){
	peso = peso-1.max(0)
	tieneSed = false	}

method hambre(){
	return peso < 200
}

method pierdePeso(){
	//peso = peso.max(50)*0.95 
	if (self.peso() == 50)
	{self.error("No puedo caminar")}
	
	peso = 50.max(peso*0.95)
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
method hambre(){
	return vecesQueComio % 2 == 0
}
method pierdePeso(){}
}

class Comedero{
	var property position = game.at(7,7)
	const property image = "comedero.gif"
	
method alimentar(){
	
}
}
