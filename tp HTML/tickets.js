//Boton borrar
    function borrarDatos() {
        location.reload();
    }
    botonBorrar.addEventListener("click", borrarDatos)

// Obtener cantidad
    function actualizarCantidad(){
        let cantidadTicketsFormulario = document.getElementById("cantidad")
        return cantidadTicketsFormulario.value
    }
    cantidad.addEventListener("click", actualizarCantidad)

//Obtener tipo de entrada
    function obtenerCategoria(){
        let categoriaTicketsFormulario = document.getElementById("categoria")
        return categoriaTicketsFormulario.value
    }
    categoria.addEventListener("click", obtenerCategoria)

/// Calcular subtotal
    let valorEntrada = 200

    let Subtotal = document.getElementById("calculoSubtotal")

    function calcularSubtotal(){
        Subtotal.innerHTML =  (obtenerCategoria()*valorEntrada*actualizarCantidad())
        return (obtenerCategoria()*valorEntrada*actualizarCantidad())
    }   
    categoria.addEventListener("click", calcularSubtotal)
    cantidad.addEventListener("click", calcularSubtotal) 

////
    



//

let subtotalFormulario = document.getElementById("calculoSubtotal")

////

