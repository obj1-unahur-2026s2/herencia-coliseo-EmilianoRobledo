class Armas{
  method poderDeAtaque() 
}

class ArmaDeFilo inherits Armas{
  var filoDeArma = 0
  const longitud = 1
  method filoDeArma() = filoDeArma 
  
  method cambiarFilo(cantidad){
    filoDeArma = (cantidad).min(1).max(0)
  }
  override method poderDeAtaque()=  filoDeArma * longitud 
}

class ArmaContundente inherits Armas{
  const peso = 10
  override method poderDeAtaque() = peso

}

class Armadura{
  //cascos y escudos
  method puntosDeArmadura(gladiador) 
}

class Casco inherits Armadura{
  override method puntosDeArmadura(gladiador) = 10
}

class Escudo inherits Armadura{
  override method puntosDeArmadura(gladiador) = 5 + (gladiador.destreza())*0.1
}

class Gladiador{
  
   
  method atacar(otro) {
    
  }
  method defender() {
  }
  method puntosDeVida() = 100
  method fuerza()
  method destreza()
  
}

class Mirmillon inherits Gladiador{
method armaduraEquipada() = Escudo or Casco
method armaEquipada() = ArmaDeFilo
  override method destreza() = 15
  var fuerza = 15
  override method fuerza() = fuerza

  method poderDeAtaque() = self.armaEquipada().poderDeAtaque()+self.fuerza() 
  var armaduraEquipada = Casco
  method cambiarArmadura(nuevaArmadura){
    armaduraEquipada = nuevaArmadura}
  
  method cambiarFuerza(cantidad){
    fuerza = cantidad}
}

class Dimachaerus inherits Gladiador{
  var destreza = 5
  method cambiarDestreza(cantidad){
    destreza = cantidad}
  override method fuerza() = 10

  override method destreza() = destreza

}