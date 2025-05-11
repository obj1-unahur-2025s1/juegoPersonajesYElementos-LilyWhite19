import elementosArmas.*

object luisa{
    var property personajeActivo = floki
    method aparece(elemento){  
        personajeActivo.encontrar(elemento)
    }
}
object floki{
    var arma = ballesta
    method cambiarArma(unArma){arma = unArma} 
    method encontrar(elemento){
        if (arma.estaCargada()){
            arma.usar()
            elemento.recibirAtaque(arma)
        }
    }
}
object mario{
    var valor = 0
    var ultimoElemento = aurora
    method esFeliz() = valor >= 50 || ultimoElemento.altura() >= 10
    method encontrar(elemento){
        valor = valor + elemento.otorgar()
        ultimoElemento = elemento
        elemento.trabajar()
    }
}