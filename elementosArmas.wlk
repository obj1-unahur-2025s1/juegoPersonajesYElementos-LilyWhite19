import jugadoresPersonajes.*
object ballesta{
    var flechas = 10
    method usar(){
        flechas = flechas - 1
    }
    method estaCargada() = flechas > 0
    method potecia() = 4
}
object jabalina{
    var estaCargada = true
    method usar() {
        estaCargada = false
    }
    method potencia() = 30
}
object castillo{
    var nivelDeDefensa = 150
    method nivelDeDefensa() = nivelDeDefensa
    method altura()  = 20
    method recibirAtaque(arma){
        nivelDeDefensa = nivelDeDefensa - arma.potencia()
    }
    method trabajar(){
        nivelDeDefensa = (nivelDeDefensa + 20).min(200)
    }
    method otorgar() = nivelDeDefensa / 5
}
object aurora{
      var estaViva = true
    method altura()  = 1
    method recibirAtaque(arma){
        if (estaViva) estaViva = false        
    }
    method trabajar() {}
    method otorgar() = 15
}
object tipa{
    var altura = 8
    method altura()  = altura
    method recibirAtaque(arma){}
    method trabajar(){
        altura += 1
    }   
    method otorgar() = altura * 2
}