class menu {
    var idMenu:Int
    var fecha:String
    init(idMenu:Int, fecha:String){
        self.idMenu = idMenu
        self.fecha = fecha
    }
    func getIdMenu() -> Int{
        return idMenu
    }
    func getFecha() -> String{
        return fecha
    }
    func setIdMenu(idMenu:Int){
        self.idMenu = idMenu
    }
    func setFecha(fecha:String){
        self.fecha = fecha
    }    
}
class Ingrediente{
    var idIngrediente:Int
    var nombreIn:String
    var precioIn:Int
    init(idIngrediente:Int, nombreIn:String, precioIn:Int){
        self.idIngrediente = idIngrediente
        self.nombreIn = nombreIn
        self.precioIn = precioIn
    }
    func getNombreIn() -> String{
        return nombreIn
    }
}
let pollo = Ingrediente (idIngrediente:1, nombreIn:"Pollo", precioIn:500)
let pimenton = Ingrediente (idIngrediente:2, nombreIn:"Pimenton", precioIn:200)
let tomate = Ingrediente (idIngrediente:3, nombreIn:"Tomate", precioIn:150)
let churrasco = Ingrediente (idIngrediente:4, nombreIn:"Churrasco", precioIn:600)
let mechada = Ingrediente (idIngrediente:5, nombreIn:"Mechada", precioIn:700)
let mayonesa = Ingrediente (idIngrediente:6, nombreIn:"Mayonesa", precioIn:100)

class Plato{
    var idPlato: Int
    var nombrePl:String
    var tipoPlato:String
    var ingredientes: [(ingredientes:Ingrediente, cantidad:Int)]  
    
    init(idPlato:Int, nombrePl:String, tipoPlato:String, ingredientes: Array<(ingredientes:Ingrediente, cantidad:Int)>){
        self.idPlato = idPlato
        self.nombrePl = nombrePl
        self.tipoPlato = tipoPlato
        self.ingredientes = ingredientes
        //super.init()
    }
    
    func setIdPlato (idPlato:Int){
        self.idPlato = idPlato
    }
    func setNombrePl (nombrePl:String){
        self.nombrePl = nombrePl
    }

    func getNombre() -> String{
        return nombrePl
    }
    func setTipoPlato(tipoPlato:String){
        self.tipoPlato=tipoPlato
    }
    func getTipoPlato() ->String{
        return tipoPlato
    }
    func getIngredientes() ->Array<(ingredientes:Ingrediente, cantidad:Int)>{
        return ingredientes
    }

}

var sandwiches = [Plato]()
sandwiches.append(Plato(idPlato:1, nombrePl:"El constructor sobrecargado",tipoPlato:"Sandwich",ingredientes:[(Ingrediente (idIngrediente:1, nombreIn:"Pollo", precioIn:500),1),(pimenton,2),(mayonesa,2)]))
sandwiches.append(Plato(idPlato:1, nombrePl:"La variable loca",tipoPlato:"Sandwich",ingredientes:[(pollo,1),(mechada,2),(pimenton,2)]))
sandwiches.append(Plato(idPlato:1, nombrePl:"El harrison For",tipoPlato:"Sandwich",ingredientes:[(mechada,1),(tomate,2),(pimenton,2)]))


println("nombre del sandiwch: "+sandwiches[0].getNombre())
println(" --- Ingredientes -- ")
println(sandwiches[0].ingredientes[0].ingredientes.nombreIn)
println(sandwiches[0].ingredientes[0].ingredientes.precioIn)
println(sandwiches[0].ingredientes[0].cantidad)
